import 'flutter_meta_appads_sdk_platform_interface.dart';
import 'objects/fb_log_event_command.dart';
import 'objects/fb_log_purchase_command.dart';
import 'objects/fb_log_standard_event_command.dart';
import 'objects/fb_set_user_data_command.dart';

export 'objects/fb_log_event_command.dart';
export 'objects/fb_log_purchase_command.dart';
export 'objects/fb_log_standard_event_command.dart';
export "objects/fb_set_user_data_command.dart";

class FlutterMetaAppAdsSdk {
  Future<void> initSdk() {
    return FlutterMetaAppadsSdkPlatform.instance.initSdk();
  }

  Future<void> setUserData(FBSetUserDataCommand command) {
    return FlutterMetaAppadsSdkPlatform.instance.setUserData(
      command.toProtoRequest(),
    );
  }

  Future<void> logStandardEvent(FBLogStandardEventCommand command) {
    return FlutterMetaAppadsSdkPlatform.instance.logStandardEvent(
      command.toProtoRequest(),
    );
  }

  Future<void> logPurchase(FBLogPurchaseCommand command) {
    return FlutterMetaAppadsSdkPlatform.instance.logPurchase(
      command.toProtoRequest(),
    );
  }

  Future<void> logEvents(FBLogEventCommand command) {
    return FlutterMetaAppadsSdkPlatform.instance.logEvents(
      command.toProtoRequest(),
    );
  }

  Future<String?> getFbAnonId() async {
    return (await FlutterMetaAppadsSdkPlatform.instance.getFbAnonId())
        ?.fbAnonId;
  }
}
