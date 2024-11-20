/// A class representing a purchase event to be logged to the Meta App Ads SDK.

/// **Properties:**
///
/// * `amount`: A double representing the purchase amount.
/// * `currency`: A string representing the currency code. ISO 4217 code, e.g., "EUR", "USD", "JPY"
/// * `eventParameter`: A map containing key-value (string, string) pairs representing additional parameters associated with the purchase event.
///
class FBLogPurchaseCommand {
  final double amount;
  final String currency;
  final Map<String, String> eventParameter;

  FBLogPurchaseCommand({
    required this.amount,
    required this.currency,
    required this.eventParameter,
  });
}
