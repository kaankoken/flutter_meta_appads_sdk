// This is a generated file - do not edit.
//
// Generated from log_standard_event_message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'log_standard_event_message.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'log_standard_event_message.pbenum.dart';

class FBLogStandardEventMessageRequest extends $pb.GeneratedMessage {
  factory FBLogStandardEventMessageRequest({
    FBStandardEvents? eventName,
    $core.Iterable<FBDefaultParameter>? eventParameter,
  }) {
    final result = create();
    if (eventName != null) result.eventName = eventName;
    if (eventParameter != null) result.eventParameter.addAll(eventParameter);
    return result;
  }

  FBLogStandardEventMessageRequest._();

  factory FBLogStandardEventMessageRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FBLogStandardEventMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FBLogStandardEventMessageRequest',
      createEmptyInstance: create)
    ..e<FBStandardEvents>(
        1, _omitFieldNames ? '' : 'eventName', $pb.PbFieldType.OE,
        protoName: 'eventName',
        defaultOrMaker: FBStandardEvents.AdClick,
        valueOf: FBStandardEvents.valueOf,
        enumValues: FBStandardEvents.values)
    ..pc<FBDefaultParameter>(
        2, _omitFieldNames ? '' : 'eventParameter', $pb.PbFieldType.PM,
        protoName: 'eventParameter', subBuilder: FBDefaultParameter.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBLogStandardEventMessageRequest clone() =>
      FBLogStandardEventMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBLogStandardEventMessageRequest copyWith(
          void Function(FBLogStandardEventMessageRequest) updates) =>
      super.copyWith(
              (message) => updates(message as FBLogStandardEventMessageRequest))
          as FBLogStandardEventMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBLogStandardEventMessageRequest create() =>
      FBLogStandardEventMessageRequest._();
  @$core.override
  FBLogStandardEventMessageRequest createEmptyInstance() => create();
  static $pb.PbList<FBLogStandardEventMessageRequest> createRepeated() =>
      $pb.PbList<FBLogStandardEventMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static FBLogStandardEventMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FBLogStandardEventMessageRequest>(
          create);
  static FBLogStandardEventMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  FBStandardEvents get eventName => $_getN(0);
  @$pb.TagNumber(1)
  set eventName(FBStandardEvents value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasEventName() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<FBDefaultParameter> get eventParameter => $_getList(1);
}

class FBDefaultParameter extends $pb.GeneratedMessage {
  factory FBDefaultParameter({
    FBStandardParameters? parameterName,
    $core.String? value,
  }) {
    final result = create();
    if (parameterName != null) result.parameterName = parameterName;
    if (value != null) result.value = value;
    return result;
  }

  FBDefaultParameter._();

  factory FBDefaultParameter.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FBDefaultParameter.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FBDefaultParameter',
      createEmptyInstance: create)
    ..e<FBStandardParameters>(
        1, _omitFieldNames ? '' : 'parameterName', $pb.PbFieldType.OE,
        protoName: 'parameterName',
        defaultOrMaker: FBStandardParameters.ParameterNameContent,
        valueOf: FBStandardParameters.valueOf,
        enumValues: FBStandardParameters.values)
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBDefaultParameter clone() => FBDefaultParameter()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBDefaultParameter copyWith(void Function(FBDefaultParameter) updates) =>
      super.copyWith((message) => updates(message as FBDefaultParameter))
          as FBDefaultParameter;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBDefaultParameter create() => FBDefaultParameter._();
  @$core.override
  FBDefaultParameter createEmptyInstance() => create();
  static $pb.PbList<FBDefaultParameter> createRepeated() =>
      $pb.PbList<FBDefaultParameter>();
  @$core.pragma('dart2js:noInline')
  static FBDefaultParameter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FBDefaultParameter>(create);
  static FBDefaultParameter? _defaultInstance;

  @$pb.TagNumber(1)
  FBStandardParameters get parameterName => $_getN(0);
  @$pb.TagNumber(1)
  set parameterName(FBStandardParameters value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasParameterName() => $_has(0);
  @$pb.TagNumber(1)
  void clearParameterName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
