//
//  Generated code. Do not modify.
//  source: set_data_processing_options.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum FBSetDataProcessingOptionsRequest_OptionalCountry {
  country, 
  notSet
}

enum FBSetDataProcessingOptionsRequest_OptionalState {
  state, 
  notSet
}

class FBSetDataProcessingOptionsRequest extends $pb.GeneratedMessage {
  factory FBSetDataProcessingOptionsRequest({
    $core.Iterable<$core.String>? modes,
    $core.int? country,
    $core.int? state,
  }) {
    final $result = create();
    if (modes != null) {
      $result.modes.addAll(modes);
    }
    if (country != null) {
      $result.country = country;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  FBSetDataProcessingOptionsRequest._() : super();
  factory FBSetDataProcessingOptionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FBSetDataProcessingOptionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, FBSetDataProcessingOptionsRequest_OptionalCountry> _FBSetDataProcessingOptionsRequest_OptionalCountryByTag = {
    2 : FBSetDataProcessingOptionsRequest_OptionalCountry.country,
    0 : FBSetDataProcessingOptionsRequest_OptionalCountry.notSet
  };
  static const $core.Map<$core.int, FBSetDataProcessingOptionsRequest_OptionalState> _FBSetDataProcessingOptionsRequest_OptionalStateByTag = {
    3 : FBSetDataProcessingOptionsRequest_OptionalState.state,
    0 : FBSetDataProcessingOptionsRequest_OptionalState.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FBSetDataProcessingOptionsRequest', createEmptyInstance: create)
    ..oo(0, [2])
    ..oo(1, [3])
    ..pPS(1, _omitFieldNames ? '' : 'modes')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'country', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FBSetDataProcessingOptionsRequest clone() => FBSetDataProcessingOptionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FBSetDataProcessingOptionsRequest copyWith(void Function(FBSetDataProcessingOptionsRequest) updates) => super.copyWith((message) => updates(message as FBSetDataProcessingOptionsRequest)) as FBSetDataProcessingOptionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBSetDataProcessingOptionsRequest create() => FBSetDataProcessingOptionsRequest._();
  FBSetDataProcessingOptionsRequest createEmptyInstance() => create();
  static $pb.PbList<FBSetDataProcessingOptionsRequest> createRepeated() => $pb.PbList<FBSetDataProcessingOptionsRequest>();
  @$core.pragma('dart2js:noInline')
  static FBSetDataProcessingOptionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FBSetDataProcessingOptionsRequest>(create);
  static FBSetDataProcessingOptionsRequest? _defaultInstance;

  FBSetDataProcessingOptionsRequest_OptionalCountry whichOptionalCountry() => _FBSetDataProcessingOptionsRequest_OptionalCountryByTag[$_whichOneof(0)]!;
  void clearOptionalCountry() => clearField($_whichOneof(0));

  FBSetDataProcessingOptionsRequest_OptionalState whichOptionalState() => _FBSetDataProcessingOptionsRequest_OptionalStateByTag[$_whichOneof(1)]!;
  void clearOptionalState() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $core.List<$core.String> get modes => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get country => $_getIZ(1);
  @$pb.TagNumber(2)
  set country($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountry() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountry() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get state => $_getIZ(2);
  @$pb.TagNumber(3)
  set state($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
