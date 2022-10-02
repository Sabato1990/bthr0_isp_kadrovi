"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DestinationSelectionStrategies = exports.subscriberFirst = exports.alwaysSubscriber = exports.alwaysProvider = void 0;
var util_1 = require("@sap-cloud-sdk/util");
var logger = (0, util_1.createLogger)({
    package: 'core',
    messageContext: 'destination-selection-strategies'
});
/**
 * Constraints the selection to provider destinations.
 * @param allDestinations - Retrieved destinations.
 * @param destinationName - Name of the destination to retrieve.
 * @returns the destination to retrieve, returns `null`, if no matched provider destination is found.
 */
function alwaysProvider(allDestinations, destinationName) {
    return findDestination(allDestinations.provider, destinationName) || null;
}
exports.alwaysProvider = alwaysProvider;
/**
 * Constraints the selection to subscriber destinations.
 * @param allDestinations - Retrieved destinations.
 * @param destinationName - Name of the destination to retrieve.
 * @returns the destination to retrieve, returns `null`, if no matched subscriber destination is found.
 */
function alwaysSubscriber(allDestinations, destinationName) {
    return findDestination(allDestinations.subscriber, destinationName) || null;
}
exports.alwaysSubscriber = alwaysSubscriber;
/**
 * Prioritizes the selection of subscriber destinations.
 * @param allDestinations - Retrieved destinations.
 * @param destinationName - Name of the destination to retrieve.
 * @returns the destination to retrieve, returns `null` if no matched destination is found.
 */
function subscriberFirst(allDestinations, destinationName) {
    return (findDestination(allDestinations.subscriber, destinationName) ||
        findDestination(allDestinations.provider, destinationName) ||
        null);
}
exports.subscriberFirst = subscriberFirst;
/**
 * Selector of destination selection strategies. See [[alwaysProvider]], [[alwaysSubscriber]] and [[subscriberFirst]] for more information available selection strategies.
 */
exports.DestinationSelectionStrategies = {
    alwaysProvider: alwaysProvider,
    alwaysSubscriber: alwaysSubscriber,
    subscriberFirst: subscriberFirst
};
function findDestination(destinations, destinationName) {
    var isRequestedDestination = function (destination) {
        return destination.name === destinationName;
    };
    var instanceDest = destinations.instance.find(isRequestedDestination);
    var subAccountDest = destinations.subaccount.find(isRequestedDestination);
    if (instanceDest && subAccountDest) {
        logger.warn("Found destinations named '".concat(destinationName, "' for both, the destination service instance and subaccount. Using instance destination."));
    }
    return instanceDest || subAccountDest;
}
//# sourceMappingURL=destination-selection-strategies.js.map