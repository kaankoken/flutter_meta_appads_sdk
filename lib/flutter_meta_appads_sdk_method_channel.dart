import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_meta_appads_sdk/proto/fb_anon_id_message.pb.dart';

import 'flutter_meta_appads_sdk_platform_interface.dart';
import 'proto/log_event_message.pb.dart';
import 'proto/log_purchase_message.pb.dart';
import 'proto/log_standard_event_message.pb.dart';
import 'proto/set_data_processing_options.pb.dart';
import 'proto/set_user_data_message.pb.dart';

/// An implementation of [FlutterMetaAppadsSdkPlatform] that uses method channels.
class MethodChannelFlutterMetaAppadsSdk extends FlutterMetaAppadsSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_meta_appads_sdk');

  @override
  Future<void> initSdk({bool enableLogging = false}) async {
    await methodChannel.invokeMethod(
      'initSdk',
      {
        "enableLogging": enableLogging,
      },
    );
  }

  @override
  Future<void> setUserData(FBSetUserDataRequest request) async {
    await methodChannel.invokeMethod("setUserData", request.writeToBuffer());
  }

  @override
  Future<void> logStandardEvent(
      FBLogStandardEventMessageRequest request) async {
    await methodChannel.invokeMethod(
        "logStandardEvent", request.writeToBuffer());
  }

  @override
  Future<void> logPurchase(FBLogPurchaseMessageRequest request) async {
    await methodChannel.invokeMethod("logPurchase", request.writeToBuffer());
  }

  @override
  Future<void> logEvents(FBLogEventMessageRequest request) async {
    await methodChannel.invokeMethod("logEvents", request.writeToBuffer());
  }

  @override
  Future<FBAnonIdResponse?> getFbAnonId() async {
    final resultRaw =
        await methodChannel.invokeMethod<List<int>>('getFbAnonId');

    if (resultRaw != null) {
      return FBAnonIdResponse.fromBuffer(resultRaw);
    }

    return null;
  }

  Future<void> setAdvertiserTrackingEnabled({required bool isEnabled}) async {
    await methodChannel.invokeMethod(
      "setAdvertiserTrackingEnabled",
      {
        "isEnabled": isEnabled,
      },
    );
  }

  Future<void> setAdvertiserIDCollectionEnabled(
      {required bool isEnabled}) async {
    await methodChannel.invokeMethod(
      "setAdvertiserIDCollectionEnabled",
      {
        "isEnabled": isEnabled,
      },
    );
  }

  Future<void> setDataProcessingOptions(
      FBSetDataProcessingOptionsRequest request) async {
    await methodChannel.invokeMethod(
        "setDataProcessingOptions", request.writeToBuffer());
  }
}
