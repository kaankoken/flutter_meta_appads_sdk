// This is a generated file - do not edit.
//
// Generated from log_event_message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FBLogEventMessageRequest extends $pb.GeneratedMessage {
  factory FBLogEventMessageRequest({
    $core.String? eventName,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? eventParameter,
  }) {
    final result = create();
    if (eventName != null) result.eventName = eventName;
    if (eventParameter != null)
      result.eventParameter.addEntries(eventParameter);
    return result;
  }

  FBLogEventMessageRequest._();

  factory FBLogEventMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FBLogEventMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

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

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBLogEventMessageRequest clone() =>
      FBLogEventMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBLogEventMessageRequest copyWith(
          void Function(FBLogEventMessageRequest) updates) =>
      super.copyWith((message) => updates(message as FBLogEventMessageRequest))
          as FBLogEventMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBLogEventMessageRequest create() => FBLogEventMessageRequest._();
  @$core.override
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
  set eventName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEventName() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get eventParameter => $_getMap(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
