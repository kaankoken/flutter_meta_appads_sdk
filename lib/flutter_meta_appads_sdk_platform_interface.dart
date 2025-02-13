import 'package:flutter_meta_appads_sdk/proto/fb_anon_id_message.pb.dart';
import 'package:flutter_meta_appads_sdk/proto/log_event_message.pb.dart';
import 'package:flutter_meta_appads_sdk/proto/log_purchase_message.pb.dart';
import 'package:flutter_meta_appads_sdk/proto/log_standard_event_message.pb.dart';
import 'package:flutter_meta_appads_sdk/proto/set_data_processing_options.pb.dart';
import 'package:flutter_meta_appads_sdk/proto/set_user_data_message.pb.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_meta_appads_sdk_method_channel.dart';

abstract class FlutterMetaAppadsSdkPlatform extends PlatformInterface {
  /// Constructs a FlutterMetaAppadsSdkPlatform.
  FlutterMetaAppadsSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMetaAppadsSdkPlatform _instance =
      MethodChannelFlutterMetaAppadsSdk();

  /// The default instance of [FlutterMetaAppadsSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMetaAppadsSdk].
  static FlutterMetaAppadsSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMetaAppadsSdkPlatform] when
  /// they register themselves.
  static set instance(FlutterMetaAppadsSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> initSdk({bool enableLogging = false}) {
    throw UnimplementedError('initSdk() has not been implemented.');
  }

  Future<void> logEvents(FBLogEventMessageRequest request) {
    throw UnimplementedError('logEvents() has not been implemented.');
  }

  Future<void> logPurchase(FBLogPurchaseMessageRequest request) {
    throw UnimplementedError('logPurchase() has not been implemented.');
  }

  Future<void> logStandardEvent(FBLogStandardEventMessageRequest request) {
    throw UnimplementedError('logStandardEvent() has not been implemented.');
  }

  Future<void> setUserData(FBSetUserDataRequest request) {
    throw UnimplementedError('setUserData() has not been implemented.');
  }

  Future<FBAnonIdResponse?> getFbAnonId() {
    throw UnimplementedError('setUserData() has not been implemented.');
  }

  Future<void> setAdvertiserTrackingEnabled({required bool isEnabled}) {
    throw UnimplementedError(
        'setAdvertiserTrackingEnabled() has not been implemented.');
  }

  Future<void> setAdvertiserIDCollectionEnabled({required bool isEnabled}) {
    throw UnimplementedError(
        'setAdvertiserIDCollectionEnabled() has not been implemented.');
  }

  Future<void> setAutoLogAppEventsEnabled({required bool isEnabled}) {
    throw UnimplementedError(
        'setAutoLogAppEventsEnabled() has not been implemented.');
  }

  Future<void> setDataProcessingOptions(
      FBSetDataProcessingOptionsRequest request) {
    throw UnimplementedError(
        'setDataProcessingOptions() has not been implemented.');
  }
}
