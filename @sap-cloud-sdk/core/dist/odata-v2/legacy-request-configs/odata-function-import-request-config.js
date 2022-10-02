"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
exports.ODataFunctionImportRequestConfigLegacy = void 0;
var uri_conversion_1 = require("../uri-conversion");
var request_1 = require("../request");
/**
 * @deprecated Since v1.21.0. Use superclass instead.
 * OData function import request configuration for a set of parameters.
 * @typeparam ParametersT - Type of the original parameters object
 */
var ODataFunctionImportRequestConfig = /** @class */ (function (_super) {
    __extends(ODataFunctionImportRequestConfig, _super);
    /**
     * Creates an instance of ODataFunctionImportRequestConfig.
     * @param method - HTTP method for the request
     * @param defaultServicePath - Default path of the service
     * @param functionImportName - The name of the function import.
     * @param parameters - Object containing the parameters with a value and additional meta information
     */
    function ODataFunctionImportRequestConfig(method, defaultServicePath, functionImportName, parameters) {
        return _super.call(this, method, defaultServicePath, functionImportName, parameters, uri_conversion_1.oDataUri) || this;
    }
    return ODataFunctionImportRequestConfig;
}(request_1.ODataFunctionImportRequestConfig));
exports.ODataFunctionImportRequestConfigLegacy = ODataFunctionImportRequestConfig;
//# sourceMappingURL=odata-function-import-request-config.js.map