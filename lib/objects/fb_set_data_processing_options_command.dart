import 'package:flutter_meta_appads_sdk/proto/set_data_processing_options.pb.dart'
    as Proto;

class FBSetDataProcessingOptionsCommand {
  final List<String> modes;
  final int? country;
  final int? state;

  FBSetDataProcessingOptionsCommand({
    required this.modes,
    this.country,
    this.state,
  });

  Proto.FBSetDataProcessingOptionsRequest toProtoRequest() {
    return Proto.FBSetDataProcessingOptionsRequest(
      modes: modes,
      country: country,
      state: state,
    );
  }
}
