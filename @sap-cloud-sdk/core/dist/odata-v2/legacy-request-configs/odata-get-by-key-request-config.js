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
exports.ODataGetByKeyRequestConfigLegacy = void 0;
var odata_common_1 = require("../../odata-common");
var uri_conversion_1 = require("../uri-conversion");
/**
 * @deprecated Since v1.21.0. Use superclass instead.
 * OData delete request configuration for an entity type.
 * @typeparam EntityT - Type of the entity to setup a request for
 */
var ODataGetByKeyRequestConfig = /** @class */ (function (_super) {
    __extends(ODataGetByKeyRequestConfig, _super);
    /**
     * Creates an instance of ODataGetByKeyRequestConfig.
     * @param _entityConstructor - Constructor type of the entity to create a configuration for
     */
    function ODataGetByKeyRequestConfig(_entityConstructor) {
        return _super.call(this, _entityConstructor, uri_conversion_1.oDataUri) || this;
    }
    return ODataGetByKeyRequestConfig;
}(odata_common_1.ODataGetByKeyRequestConfig));
exports.ODataGetByKeyRequestConfigLegacy = ODataGetByKeyRequestConfig;
//# sourceMappingURL=odata-get-by-key-request-config.js.map