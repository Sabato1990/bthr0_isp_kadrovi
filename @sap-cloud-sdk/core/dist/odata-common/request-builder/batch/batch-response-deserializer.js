"use strict";
var __assign = (this && this.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.parseEntityNameFromMetadataUri = exports.deserializeBatchResponse = exports.BatchResponseDeserializer = void 0;
var util_1 = require("@sap-cloud-sdk/util");
var batch_response_parser_1 = require("./batch-response-parser");
var logger = (0, util_1.createLogger)({
    package: 'core',
    messageContext: 'batch-response-transformer'
});
/**
 * Represents the state needed to deserialize a parsed batch response using OData version specific deserialization data access.
 */
var BatchResponseDeserializer = /** @class */ (function () {
    /**
     * Creates an instance of BatchResponseTransformer.
     * @param entityToConstructorMap - A map that holds the entity type to constructor mapping.
     * @param responseDataAccessor - Response data access module.
     * @param deserializer - Entity deserializer.
     */
    function BatchResponseDeserializer(entityToConstructorMap, responseDataAccessor, deserializer) {
        this.entityToConstructorMap = entityToConstructorMap;
        this.responseDataAccessor = responseDataAccessor;
        this.deserializer = deserializer;
    }
    /**
     * Deserialize the parsed batch response.
     * @param parsedBatchResponse - Two dimensional list of parsed batch sub responses.
     * @returns An array of parsed sub responses of the batch response.
     */
    BatchResponseDeserializer.prototype.deserializeBatchResponse = function (parsedBatchResponse) {
        var _this = this;
        return parsedBatchResponse.map(function (responseData) {
            if (Array.isArray(responseData)) {
                return _this.deserializeChangeSet(responseData);
            }
            return (0, batch_response_parser_1.isHttpSuccessCode)(responseData.httpCode)
                ? _this.deserializeRetrieveResponse(responseData)
                : _this.deserializeErrorResponse(responseData);
        });
    };
    BatchResponseDeserializer.prototype.deserializeRetrieveResponse = function (responseData) {
        return __assign(__assign({}, responseData), { type: this.getConstructor(responseData.body), as: asReadResponse(responseData.body, this.responseDataAccessor, this.deserializer), isSuccess: function () { return true; } });
    };
    BatchResponseDeserializer.prototype.deserializeErrorResponse = function (responseData) {
        return __assign(__assign({}, responseData), { isSuccess: function () { return false; } });
    };
    BatchResponseDeserializer.prototype.deserializeChangeSetSubResponse = function (responseData) {
        return __assign(__assign({}, responseData), { type: this.getConstructor(responseData.body), as: asWriteResponse(responseData.body, this.responseDataAccessor, this.deserializer) });
    };
    BatchResponseDeserializer.prototype.deserializeChangeSet = function (changesetData) {
        var _this = this;
        return {
            responses: changesetData.map(function (subResponseData) {
                return _this.deserializeChangeSetSubResponse(subResponseData);
            }),
            isSuccess: function () { return true; }
        };
    };
    /**
     * Retrieve the constructor for a specific single response body.
     * @param responseBody - The body of a single response as an object.
     * @returns The constructor if found in the mapping, `undefined` otherwise.
     */
    BatchResponseDeserializer.prototype.getConstructor = function (responseBody) {
        var _a;
        var entityJson = this.responseDataAccessor.isCollectionResult(responseBody)
            ? this.responseDataAccessor.getCollectionResult(responseBody)[0]
            : this.responseDataAccessor.getSingleResult(responseBody);
        var entityUri = (_a = entityJson === null || entityJson === void 0 ? void 0 : entityJson.__metadata) === null || _a === void 0 ? void 0 : _a.uri;
        if (entityUri) {
            return this.entityToConstructorMap[parseEntityNameFromMetadataUri(entityUri)];
        }
        logger.warn('Could not parse constructor from response body.');
    };
    return BatchResponseDeserializer;
}());
exports.BatchResponseDeserializer = BatchResponseDeserializer;
/**
 * Deserialize the parsed batch response.
 * @param parsedBatchResponse - Two dimensional list of parsed batch sub responses.
 * @param entityToConstructorMap - A map that holds the entity type to constructor mapping.
 * @param responseDataAccessor - Response data access module.
 * @param deserializer - Entity deserializer.
 * @returns An array of parsed sub responses of the batch response.
 */
function deserializeBatchResponse(parsedBatchResponse, entityToConstructorMap, responseDataAccessor, deserializer) {
    return new BatchResponseDeserializer(entityToConstructorMap, responseDataAccessor, deserializer).deserializeBatchResponse(parsedBatchResponse);
}
exports.deserializeBatchResponse = deserializeBatchResponse;
/**
 * Create a function to transform the parsed response body to a list of entities of the given type or an error.
 * @param body - The parsed JSON response body.
 * @param responseDataAccessor - Response data access module.
 * @param deserializer - Entity deserializer.
 * @returns A function to be used for transformation of the read response.
 */
function asReadResponse(body, responseDataAccessor, deserializer) {
    return function (constructor) {
        if (body.error) {
            throw new util_1.ErrorWithCause('Could not parse read response.', body.error);
        }
        if (responseDataAccessor.isCollectionResult(body)) {
            return responseDataAccessor
                .getCollectionResult(body)
                .map(function (r) { return deserializer.deserializeEntity(r, constructor); });
        }
        return [
            deserializer.deserializeEntity(responseDataAccessor.getSingleResult(body), constructor)
        ];
    };
}
/**
 * Create a function to transform the parsed response body to an entity of the given type.
 * @param body - The parsed JSON response body.
 * @param responseDataAccessor - Response data access module.
 * @param deserializer - Entity deserializer.
 * @returns A function to be used for transformation of the write response.
 */
function asWriteResponse(body, responseDataAccessor, deserializer) {
    return function (constructor) {
        return deserializer.deserializeEntity(responseDataAccessor.getSingleResult(body), constructor);
    };
}
/**
 * Parse the entity name from the metadata uri. This should be the `__metadata` property of a single entity in the response.
 * @param uri - The URI to parse the entity name from
 * @returns The entity name.
 */
function parseEntityNameFromMetadataUri(uri) {
    if (!uri) {
        throw new Error("Could not retrieve entity name from metadata. URI was: '".concat(uri, "'."));
    }
    var pathBeforeQuery = uri.split('?')[0];
    var pathBeforeKeys = pathBeforeQuery.split('(')[0];
    var uriParts = pathBeforeKeys.split('/');
    // Remove another part in case of a trailing slash
    var entityName = uriParts.pop() || uriParts.pop();
    if (!entityName) {
        throw Error("Could not retrieve entity name from metadata. Unknown URI format. URI was: '".concat(uri, "'."));
    }
    return entityName;
}
exports.parseEntityNameFromMetadataUri = parseEntityNameFromMetadataUri;
//# sourceMappingURL=batch-response-deserializer.js.map