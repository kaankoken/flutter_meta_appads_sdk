//
//  Generated code. Do not modify.
//  source: set_user_data_message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'set_user_data_message.pbenum.dart';

export 'set_user_data_message.pbenum.dart';

class FBSetUserDataRequest extends $pb.GeneratedMessage {
  factory FBSetUserDataRequest({
    FBUserDataType? type,
    $core.String? value,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  FBSetUserDataRequest._() : super();
  factory FBSetUserDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FBSetUserDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FBSetUserDataRequest', createEmptyInstance: create)
    ..e<FBUserDataType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: FBUserDataType.Email, valueOf: FBUserDataType.valueOf, enumValues: FBUserDataType.values)
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FBSetUserDataRequest clone() => FBSetUserDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FBSetUserDataRequest copyWith(void Function(FBSetUserDataRequest) updates) => super.copyWith((message) => updates(message as FBSetUserDataRequest)) as FBSetUserDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBSetUserDataRequest create() => FBSetUserDataRequest._();
  FBSetUserDataRequest createEmptyInstance() => create();
  static $pb.PbList<FBSetUserDataRequest> createRepeated() => $pb.PbList<FBSetUserDataRequest>();
  @$core.pragma('dart2js:noInline')
  static FBSetUserDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FBSetUserDataRequest>(create);
  static FBSetUserDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  FBUserDataType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(FBUserDataType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
