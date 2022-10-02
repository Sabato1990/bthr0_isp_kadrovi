'use strict'

const commons = require('../../odata-commons')
const HttpMethods = commons.http.HttpMethod.Methods
const ResourceKinds = commons.uri.UriResource.ResourceKind
const PreconditionFailedError = require('../errors/PreconditionFailedError')
const PreconditionRequiredError = require('../errors/PreconditionRequiredError')

/**
 * Class to validate conditional requests.
 */
class ConditionalRequestValidator {
  /**
   * Pre-validate a request.
   * @param {string} ifMatch the value of the If-Match HTTP header
   * @param {string} ifNoneMatch the value of the If-None-Match HTTP header
   * @param {HttpMethod.Methods} method the HTTP method
   * @param {boolean} isConcurrentResource if the request is for a concurrent resource
   * @throws {PreconditionRequiredError} if a conditional HTTP header is required but not there
   * @throws {ConflictError} if a conditional HTTP header is set but the resource is not concurrent
   */
  preValidate (ifMatch, ifNoneMatch, method, isConcurrentResource) {
    if (isConcurrentResource) {
      if (method !== HttpMethods.GET && !ifMatch && !ifNoneMatch) throw new PreconditionRequiredError()
      return
    }

    if (ifMatch || ifNoneMatch) {
      // Careless clients send this also for DELETE and POST, other careless clients send the star in double-quotes.
      if ([HttpMethods.POST].includes(method)) {
        if (
          (ifMatch && ifMatch.trim() !== '*' && ifMatch.trim() !== '"*"') ||
          (ifNoneMatch && ifNoneMatch.trim() !== '*' && ifNoneMatch.trim() !== '"*"')
        ) {
          throw new PreconditionFailedError()
        }
      }
    }
  }

  /**
   * Validate the ETag for the given request.
   * @param {string} ifMatch the value of the If-Match HTTP header
   * @param {string} ifNoneMatch the value of the If-None-Match HTTP header
   * @param {HttpMethod.Methods} method the HTTP method
   * @param {UriResource.ResourceKind} kind the kind of the addressed resource
   * @param {string} etag the ETag provided by the handler implementation
   * @returns {boolean} true if the result of the validation is "not modified", otherwise false
   * @throws {PreconditionFailedError} if the validation failed
   */
  validateEtag (ifMatch, ifNoneMatch, method, kind, etag) {
    const ifMatchEtags = ifMatch ? this._parseHeaderEtagValue(ifMatch) : []
    const ifNoneMatchEtags = ifNoneMatch ? this._parseHeaderEtagValue(ifNoneMatch) : []

    if (ifMatch && !ifMatchEtags.includes(etag) && !ifMatchEtags.includes('*')) throw new PreconditionFailedError()

    if (
      method !== HttpMethods.GET &&
      method !== HttpMethods.HEAD &&
      (ifNoneMatchEtags.includes(etag) ||
        (ifNoneMatchEtags.includes('*') &&
          ![HttpMethods.PUT, HttpMethods.PATCH].includes(method) &&
          kind !== ResourceKinds.BOUND_ACTION))
    ) {
      throw new PreconditionFailedError()
    }

    return Boolean(
      (method === HttpMethods.GET || method === HttpMethods.HEAD) &&
        ifNoneMatch &&
        (ifNoneMatchEtags.includes('*') || ifNoneMatchEtags.includes(etag))
    )
  }

  /**
   * Parse the ETags in an HTTP header.
   * @param {string} value the value of the HTTP header
   * @returns {string[]} the parsed ETag values
   * @private
   */
  _parseHeaderEtagValue (value) {
    return value.split(',').map(str => {
      let result = str.trim()
      if (result === '*') return result
      if (result.startsWith('W/')) result = result.substring(2)
      return result.startsWith('"') && result.endsWith('"') ? result.substring(1, result.length - 1) : null
    })
  }
}

module.exports = ConditionalRequestValidator
