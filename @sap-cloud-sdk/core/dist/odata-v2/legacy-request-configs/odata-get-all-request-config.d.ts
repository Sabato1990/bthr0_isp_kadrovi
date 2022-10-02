import { ODataGetAllRequestConfig as ODataGetAllRequestConfigBase, Entity as EntityBase, Constructable } from '../../odata-common';
/**
 * @deprecated Since v1.21.0. Use superclass instead.
 * OData delete request configuration for an entity type.
 * @typeparam EntityT - Type of the entity to setup a request for
 */
declare class ODataGetAllRequestConfig<EntityT extends EntityBase> extends ODataGetAllRequestConfigBase<EntityT> {
    /**
     * Creates an instance of ODataGetAllRequestConfig.
     * @param _entityConstructor - Constructor type of the entity to create a configuration for
     */
    constructor(_entityConstructor: Constructable<EntityT>);
}
export { ODataGetAllRequestConfig as ODataGetAllRequestConfigLegacy };
//# sourceMappingURL=odata-get-all-request-config.d.ts.map