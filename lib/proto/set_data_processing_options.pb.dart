// This is a generated file - do not edit.
//
// Generated from set_data_processing_options.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum FBSetDataProcessingOptionsRequest_OptionalCountry { country, notSet }

enum FBSetDataProcessingOptionsRequest_OptionalState { state, notSet }

class FBSetDataProcessingOptionsRequest extends $pb.GeneratedMessage {
  factory FBSetDataProcessingOptionsRequest({
    $core.Iterable<$core.String>? modes,
    $core.int? country,
    $core.int? state,
  }) {
    final result = create();
    if (modes != null) result.modes.addAll(modes);
    if (country != null) result.country = country;
    if (state != null) result.state = state;
    return result;
  }

  FBSetDataProcessingOptionsRequest._();

  factory FBSetDataProcessingOptionsRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FBSetDataProcessingOptionsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core
      .Map<$core.int, FBSetDataProcessingOptionsRequest_OptionalCountry>
      _FBSetDataProcessingOptionsRequest_OptionalCountryByTag = {
    2: FBSetDataProcessingOptionsRequest_OptionalCountry.country,
    0: FBSetDataProcessingOptionsRequest_OptionalCountry.notSet
  };
  static const $core
      .Map<$core.int, FBSetDataProcessingOptionsRequest_OptionalState>
      _FBSetDataProcessingOptionsRequest_OptionalStateByTag = {
    3: FBSetDataProcessingOptionsRequest_OptionalState.state,
    0: FBSetDataProcessingOptionsRequest_OptionalState.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FBSetDataProcessingOptionsRequest',
      createEmptyInstance: create)
    ..oo(0, [2])
    ..oo(1, [3])
    ..pPS(1, _omitFieldNames ? '' : 'modes')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'country', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBSetDataProcessingOptionsRequest clone() =>
      FBSetDataProcessingOptionsRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBSetDataProcessingOptionsRequest copyWith(
          void Function(FBSetDataProcessingOptionsRequest) updates) =>
      super.copyWith((message) =>
              updates(message as FBSetDataProcessingOptionsRequest))
          as FBSetDataProcessingOptionsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBSetDataProcessingOptionsRequest create() =>
      FBSetDataProcessingOptionsRequest._();
  @$core.override
  FBSetDataProcessingOptionsRequest createEmptyInstance() => create();
  static $pb.PbList<FBSetDataProcessingOptionsRequest> createRepeated() =>
      $pb.PbList<FBSetDataProcessingOptionsRequest>();
  @$core.pragma('dart2js:noInline')
  static FBSetDataProcessingOptionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FBSetDataProcessingOptionsRequest>(
          create);
  static FBSetDataProcessingOptionsRequest? _defaultInstance;

  FBSetDataProcessingOptionsRequest_OptionalCountry whichOptionalCountry() =>
      _FBSetDataProcessingOptionsRequest_OptionalCountryByTag[$_whichOneof(0)]!;
  void clearOptionalCountry() => $_clearField($_whichOneof(0));

  FBSetDataProcessingOptionsRequest_OptionalState whichOptionalState() =>
      _FBSetDataProcessingOptionsRequest_OptionalStateByTag[$_whichOneof(1)]!;
  void clearOptionalState() => $_clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get modes => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get country => $_getIZ(1);
  @$pb.TagNumber(2)
  set country($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCountry() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountry() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get state => $_getIZ(2);
  @$pb.TagNumber(3)
  set state($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
