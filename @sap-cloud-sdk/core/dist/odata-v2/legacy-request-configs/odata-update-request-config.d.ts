import { Entity as EntityBase, Constructable, ODataUpdateRequestConfig as ODataUpdateRequestConfigBase } from '../../odata-common';
/**
 * @deprecated Since v1.21.0. Use superclass instead.
 * OData delete request configuration for an entity type.
 * @typeparam EntityT - Type of the entity to setup a request for
 */
declare class ODataUpdateRequestConfig<EntityT extends EntityBase> extends ODataUpdateRequestConfigBase<EntityT> {
    /**
     * Creates an instance of ODataUpdateRequestConfig.
     * @param _entityConstructor - Constructor type of the entity to create a configuration for
     */
    constructor(_entityConstructor: Constructable<EntityT>);
}
export { ODataUpdateRequestConfig as ODataUpdateRequestConfigLegacy };
//# sourceMappingURL=odata-update-request-config.d.ts.map