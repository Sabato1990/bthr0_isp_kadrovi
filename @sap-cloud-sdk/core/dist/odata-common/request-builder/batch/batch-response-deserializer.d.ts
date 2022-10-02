import { ErrorResponse, ReadResponse, WriteResponses } from '../../batch-response';
import { Constructable, Entity } from '../../entity';
import { EntityDeserializer } from '../../entity-deserializer';
import { ResponseDataAccessor } from '../../response-data-accessor';
import { ResponseData } from './batch-response-parser';
/**
 * Represents the state needed to deserialize a parsed batch response using OData version specific deserialization data access.
 */
export declare class BatchResponseDeserializer {
    private readonly entityToConstructorMap;
    private readonly responseDataAccessor;
    private readonly deserializer;
    /**
     * Creates an instance of BatchResponseTransformer.
     * @param entityToConstructorMap - A map that holds the entity type to constructor mapping.
     * @param responseDataAccessor - Response data access module.
     * @param deserializer - Entity deserializer.
     */
    constructor(entityToConstructorMap: Record<string, Constructable<Entity>>, responseDataAccessor: ResponseDataAccessor, deserializer: EntityDeserializer);
    /**
     * Deserialize the parsed batch response.
     * @param parsedBatchResponse - Two dimensional list of parsed batch sub responses.
     * @returns An array of parsed sub responses of the batch response.
     */
    deserializeBatchResponse(parsedBatchResponse: (ResponseData[] | ResponseData)[]): (ErrorResponse | ReadResponse | WriteResponses)[];
    private deserializeRetrieveResponse;
    private deserializeErrorResponse;
    private deserializeChangeSetSubResponse;
    private deserializeChangeSet;
    /**
     * Retrieve the constructor for a specific single response body.
     * @param responseBody - The body of a single response as an object.
     * @returns The constructor if found in the mapping, `undefined` otherwise.
     */
    private getConstructor;
}
/**
 * Deserialize the parsed batch response.
 * @param parsedBatchResponse - Two dimensional list of parsed batch sub responses.
 * @param entityToConstructorMap - A map that holds the entity type to constructor mapping.
 * @param responseDataAccessor - Response data access module.
 * @param deserializer - Entity deserializer.
 * @returns An array of parsed sub responses of the batch response.
 */
export declare function deserializeBatchResponse(parsedBatchResponse: (ResponseData[] | ResponseData)[], entityToConstructorMap: Record<string, Constructable<Entity>>, responseDataAccessor: ResponseDataAccessor, deserializer: EntityDeserializer): (ErrorResponse | ReadResponse | WriteResponses)[];
/**
 * Parse the entity name from the metadata uri. This should be the `__metadata` property of a single entity in the response.
 * @param uri - The URI to parse the entity name from
 * @returns The entity name.
 */
export declare function parseEntityNameFromMetadataUri(uri: string): string;
//# sourceMappingURL=batch-response-deserializer.d.ts.map