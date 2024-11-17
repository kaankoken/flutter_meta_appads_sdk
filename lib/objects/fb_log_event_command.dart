import 'package:flutter_meta_appads_sdk/proto/log_event_message.pb.dart';

class FBLogEventCommand {
  final String eventName;
  final Map<String, String> eventParameters;

  FBLogEventCommand({
    required this.eventName,
    required this.eventParameters,
  });

  FBLogEventMessageRequest toProtoRequest() {
    return FBLogEventMessageRequest(
      eventName: eventName,
      eventParameter: eventParameters,
    );
  }
}
