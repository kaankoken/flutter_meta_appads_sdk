// This is a generated file - do not edit.
//
// Generated from set_user_data_message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'set_user_data_message.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'set_user_data_message.pbenum.dart';

class FBSetUserDataRequest extends $pb.GeneratedMessage {
  factory FBSetUserDataRequest({
    FBUserDataType? type,
    $core.String? value,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (value != null) result.value = value;
    return result;
  }

  FBSetUserDataRequest._();

  factory FBSetUserDataRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FBSetUserDataRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FBSetUserDataRequest',
      createEmptyInstance: create)
    ..e<FBUserDataType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: FBUserDataType.Email,
        valueOf: FBUserDataType.valueOf,
        enumValues: FBUserDataType.values)
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBSetUserDataRequest clone() =>
      FBSetUserDataRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBSetUserDataRequest copyWith(void Function(FBSetUserDataRequest) updates) =>
      super.copyWith((message) => updates(message as FBSetUserDataRequest))
          as FBSetUserDataRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBSetUserDataRequest create() => FBSetUserDataRequest._();
  @$core.override
  FBSetUserDataRequest createEmptyInstance() => create();
  static $pb.PbList<FBSetUserDataRequest> createRepeated() =>
      $pb.PbList<FBSetUserDataRequest>();
  @$core.pragma('dart2js:noInline')
  static FBSetUserDataRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FBSetUserDataRequest>(create);
  static FBSetUserDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  FBUserDataType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(FBUserDataType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

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
