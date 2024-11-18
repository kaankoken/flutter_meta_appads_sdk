//
//  Generated code. Do not modify.
//  source: log_standard_event_message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'log_standard_event_message.pbenum.dart';

export 'log_standard_event_message.pbenum.dart';

class FBLogStandardEventMessageRequest extends $pb.GeneratedMessage {
  factory FBLogStandardEventMessageRequest({
    FBStandardEvents? eventName,
    $core.Iterable<FBDefaultParameter>? eventParameter,
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
  FBLogStandardEventMessageRequest._() : super();
  factory FBLogStandardEventMessageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FBLogStandardEventMessageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

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

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FBLogStandardEventMessageRequest clone() =>
      FBLogStandardEventMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FBLogStandardEventMessageRequest copyWith(
          void Function(FBLogStandardEventMessageRequest) updates) =>
      super.copyWith(
              (message) => updates(message as FBLogStandardEventMessageRequest))
          as FBLogStandardEventMessageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBLogStandardEventMessageRequest create() =>
      FBLogStandardEventMessageRequest._();
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
  set eventName(FBStandardEvents v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEventName() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<FBDefaultParameter> get eventParameter => $_getList(1);
}

class FBDefaultParameter extends $pb.GeneratedMessage {
  factory FBDefaultParameter({
    FBStandardParameters? parameterName,
    $core.String? value,
  }) {
    final $result = create();
    if (parameterName != null) {
      $result.parameterName = parameterName;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  FBDefaultParameter._() : super();
  factory FBDefaultParameter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FBDefaultParameter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

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

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FBDefaultParameter clone() => FBDefaultParameter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FBDefaultParameter copyWith(void Function(FBDefaultParameter) updates) =>
      super.copyWith((message) => updates(message as FBDefaultParameter))
          as FBDefaultParameter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBDefaultParameter create() => FBDefaultParameter._();
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
  set parameterName(FBStandardParameters v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParameterName() => $_has(0);
  @$pb.TagNumber(1)
  void clearParameterName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
