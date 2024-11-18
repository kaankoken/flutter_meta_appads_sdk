//
//  Generated code. Do not modify.
//  source: fb_anon_id_message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FBAnonIdResponse extends $pb.GeneratedMessage {
  factory FBAnonIdResponse({
    $core.String? fbAnonId,
  }) {
    final $result = create();
    if (fbAnonId != null) {
      $result.fbAnonId = fbAnonId;
    }
    return $result;
  }
  FBAnonIdResponse._() : super();
  factory FBAnonIdResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FBAnonIdResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FBAnonIdResponse',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fbAnonId', protoName: 'fbAnonId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FBAnonIdResponse clone() => FBAnonIdResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FBAnonIdResponse copyWith(void Function(FBAnonIdResponse) updates) =>
      super.copyWith((message) => updates(message as FBAnonIdResponse))
          as FBAnonIdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBAnonIdResponse create() => FBAnonIdResponse._();
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
  set fbAnonId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFbAnonId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFbAnonId() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
