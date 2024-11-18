//
//  Generated code. Do not modify.
//  source: log_event_message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FBLogEventMessageRequest extends $pb.GeneratedMessage {
  factory FBLogEventMessageRequest({
    $core.String? eventName,
    $core.Map<$core.String, $core.String>? eventParameter,
  }) {
    final $result = create();
    if (eventName != null) {
      $result.eventName = eventName;
    }
    if (eventParameter != null) {
      $result.eventParameter.addAll(eventParameter);
    }
    return $result;
  }
  FBLogEventMessageRequest._() : super();
  factory FBLogEventMessageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FBLogEventMessageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FBLogEventMessageRequest',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'eventName', protoName: 'eventName')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'eventParameter',
        protoName: 'eventParameter',
        entryClassName: 'FBLogEventMessageRequest.EventParameterEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FBLogEventMessageRequest clone() =>
      FBLogEventMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FBLogEventMessageRequest copyWith(
          void Function(FBLogEventMessageRequest) updates) =>
      super.copyWith((message) => updates(message as FBLogEventMessageRequest))
          as FBLogEventMessageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBLogEventMessageRequest create() => FBLogEventMessageRequest._();
  FBLogEventMessageRequest createEmptyInstance() => create();
  static $pb.PbList<FBLogEventMessageRequest> createRepeated() =>
      $pb.PbList<FBLogEventMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static FBLogEventMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FBLogEventMessageRequest>(create);
  static FBLogEventMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get eventName => $_getSZ(0);
  @$pb.TagNumber(1)
  set eventName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEventName() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventName() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get eventParameter => $_getMap(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
