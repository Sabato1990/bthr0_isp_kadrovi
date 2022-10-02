import { MethodRequestBuilder } from '../request-builder-base';
import { BatchChangeSet } from './batch-change-set';
import { BatchRequestSerializationOptions } from './batch-request-options';
import type { BatchRequestBuilder } from './batch-request-builder';
/**
 * Serialize change set to string.
 * @param changeSet - Change set containing a collection of write operations.
 * @param options - Request serialization options.
 * @returns The serialized string representation of a change set.
 */
export declare function serializeChangeSet(changeSet: BatchChangeSet, options?: BatchRequestSerializationOptions): string | undefined;
/**
 * Serialize a multipart request to string.
 * @param request - One of [[GetAllRequestBuilder | getAll]], [[GetByKeyRequestBuilder | getByKey]], [[CreateRequestBuilder | create]], [[UpdateRequestBuilder | update]] or [[DeleteRequestBuilder | delete]] request builder.
 * @param options - Request serialization options.
 * @returns The serialized string representation of a multipart request, including the multipart headers.
 */
export declare function serializeRequest(request: MethodRequestBuilder, options?: BatchRequestSerializationOptions): string;
/**
 * Serialize a batch request to string. This is used for the batch request payload when executing the request.
 * @param request - Batch request to serialize.
 * @param options - Request serialization options.
 * @returns String representation of the batch request.
 */
export declare function serializeBatchRequest(request: BatchRequestBuilder, options?: BatchRequestSerializationOptions): string;
/**
 * @deprecated Since v1.30.0. This function won't be replaced.
 * Serialize a request to a one line string containing the HTTP method, URL and HTTP version.
 * For Example:
 * `GET /sap/opu/odata/sap/API_BUSINESS_PARTNER/A_BusinessPartnerAddress?$format=json&$top=1 HTTP/1.1`
 * @param request - One of [[GetAllRequestBuilder | getAll]], [[GetByKeyRequestBuilder | getByKey]], [[CreateRequestBuilder | create]], [[UpdateRequestBuilder | update]] or [[DeleteRequestBuilder | delete]] request builder.
 * @returns The serialized request as `<HTTP method> <URL> <HTTP version>`.
 */
export declare function getLine(request: MethodRequestBuilder): string;
//# sourceMappingURL=batch-request-serializer.d.ts.map