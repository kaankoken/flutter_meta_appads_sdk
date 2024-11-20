/// A class representing a custom event to be logged to the Meta App Ads SDK.
///
/// **Properties:**
///
/// * `eventName`: A string specifying the name of the custom event.
/// * `eventParameters`: A map containing key-value (string, string) pairs representing additional parameters associated with the event.
///
class FBLogEventCommand {
  final String eventName;
  final Map<String, String> eventParameters;

  FBLogEventCommand({
    required this.eventName,
    required this.eventParameters,
  });
}
