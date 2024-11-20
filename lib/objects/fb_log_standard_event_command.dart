/// An enum representing standard events that can be logged to the Meta App Ads SDK.
enum FBStandardEvent {
  adClick,
  adImpression,
  completedRegistration,
  completedTutorial,
  contact,
  customizeProduct,
  donate,
  findLocation,
  rated,
  schedule,
  searched,
  startTrial,
  submitApplication,
  subscribe,
  viewedContent,
  addedPaymentInfo,
  addedToCart,
  addedToWishlist,
  initiatedCheckout,
  purchased,
  achievedLevel,
  unlockedAchievement,
  spentCredits,
}

/// An enum representing standard parameters that can be used with standard events.
enum FBStandardParameter {
  parameterNameContent,
  parameterNameContentID,
  parameterNameContentType,
  parameterNameCurrency,
  parameterNameDescription,
  parameterNameLevel,
  parameterNameMaxRatingValue,
  parameterNameNumItems,
  parameterNamePaymentInfoAvailable,
  parameterNameRegistrationMethod,
  parameterNameSearchString,
  parameterNameSuccess,
  parameterNameAdType,
  parameterNameOrderID,
  parameterNameEventName,
  parameterNameLogTime,
}

/// A class representing a standard event to be logged to the Meta App Ads SDK.
///
/// Standard events are predefined events with well-defined meanings provided by Meta.
/// You can use this class to easily log common user actions within your app.
///
/// **Properties:**
///
/// * `event`: An `FBStandardEvent` enum value specifying the standard event to log.
/// * `parameters`: A map containing key-value pairs where keys are `FBStandardParameter` enums
///   representing additional parameters associated with the standard event, and values are strings
///   containing the parameter values.
class FBLogStandardEventCommand {
  final FBStandardEvent event;
  final Map<FBStandardParameter, String> parameters;

  FBLogStandardEventCommand({required this.event, required this.parameters});
}
