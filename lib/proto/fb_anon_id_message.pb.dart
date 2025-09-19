// This is a generated file - do not edit.
//
// Generated from fb_anon_id_message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FBAnonIdResponse extends $pb.GeneratedMessage {
  factory FBAnonIdResponse({
    $core.String? fbAnonId,
  }) {
    final result = create();
    if (fbAnonId != null) result.fbAnonId = fbAnonId;
    return result;
  }

  FBAnonIdResponse._();

  factory FBAnonIdResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FBAnonIdResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FBAnonIdResponse',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fbAnonId', protoName: 'fbAnonId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBAnonIdResponse clone() => FBAnonIdResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBAnonIdResponse copyWith(void Function(FBAnonIdResponse) updates) =>
      super.copyWith((message) => updates(message as FBAnonIdResponse))
          as FBAnonIdResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBAnonIdResponse create() => FBAnonIdResponse._();
  @$core.override
  FBAnonIdResponse createEmptyInstance() => create();
  static $pb.PbList<FBAnonIdResponse> createRepeated() =>
      $pb.PbList<FBAnonIdResponse>();
  @$core.pragma('dart2js:noInline')
  static FBAnonIdResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FBAnonIdResponse>(create);
  static FBAnonIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fbAnonId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fbAnonId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFbAnonId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFbAnonId() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
