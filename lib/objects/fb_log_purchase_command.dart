import 'package:flutter_meta_appads_sdk/proto/log_purchase_message.pb.dart';

class FBLogPurchaseCommand {
  final double amount;
  final String currency;
  final Map<String, String> eventParameter;

  FBLogPurchaseCommand({
    required this.amount,
    required this.currency,
    required this.eventParameter,
  });

  FBLogPurchaseMessageRequest toProtoRequest() {
    return FBLogPurchaseMessageRequest(
      amount: amount,
      currency: currency,
      eventParameter: eventParameter,
    );
  }
}
