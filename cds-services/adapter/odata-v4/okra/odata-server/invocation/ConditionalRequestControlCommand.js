'use strict'

const commons = require('../../odata-commons')
const StatusCodes = commons.http.HttpStatusCode.StatusCodes
const RepresentationKinds = commons.format.RepresentationKind.Kinds
const Command = require('./Command')

/**
 * The `next` callback to be called upon finish execution.
 * @callback Next
 * @param {?Error} error An error if there is one or null if not
 */

/**
 * Executes the validation of the conditional request.
 */
class ConditionalRequestControlCommand extends Command {
  /**
   * Creates an instance of ConditionalRequestControlCommand.
   * @param {OdataRequest} request the current OData request
   * @param {OdataResponse} response the current OData response
   * @param {FormatManager} formatManager The current instance of format manager
   * @param {LoggerFacade} logger the logger
   */
  constructor (request, response, formatManager, logger) {
    super()
    this._request = request
    this._response = response
    this._formatManager = formatManager
    this._logger = logger
  }

  execute (next) {
    // Validate that the ETag validation has been called by the data handler.
    if (this._request.isConditional()) {
      // Do not set statusCode directly because of internal response cache.
      if (this._request.getETAGValidationStatus() === StatusCodes.NOT_MODIFIED) {
        this._response.setStatusCode(StatusCodes.NOT_MODIFIED)

        this._response
          .getContract()
          .setSerializerFunction(
            this._formatManager.getFormatDescriptions(RepresentationKinds.NO_CONTENT, null)[0].getSerializerFunction()
          )
      }
    }

    next()
  }
}

module.exports = ConditionalRequestControlCommand
