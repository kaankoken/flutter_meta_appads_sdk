//
//  Generated code. Do not modify.
//  source: log_purchase_message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FBLogPurchaseMessageRequest extends $pb.GeneratedMessage {
  factory FBLogPurchaseMessageRequest({
    $core.double? amount,
    $core.String? currency,
    $core.Map<$core.String, $core.String>? eventParameter,
  }) {
    final $result = create();
    if (amount != null) {
      $result.amount = amount;
    }
    if (currency != null) {
      $result.currency = currency;
    }
    if (eventParameter != null) {
      $result.eventParameter.addAll(eventParameter);
    }
    return $result;
  }
  FBLogPurchaseMessageRequest._() : super();
  factory FBLogPurchaseMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FBLogPurchaseMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FBLogPurchaseMessageRequest', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(2, _omitFieldNames ? '' : 'currency')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'eventParameter', protoName: 'eventParameter', entryClassName: 'FBLogPurchaseMessageRequest.EventParameterEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FBLogPurchaseMessageRequest clone() => FBLogPurchaseMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FBLogPurchaseMessageRequest copyWith(void Function(FBLogPurchaseMessageRequest) updates) => super.copyWith((message) => updates(message as FBLogPurchaseMessageRequest)) as FBLogPurchaseMessageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBLogPurchaseMessageRequest create() => FBLogPurchaseMessageRequest._();
  FBLogPurchaseMessageRequest createEmptyInstance() => create();
  static $pb.PbList<FBLogPurchaseMessageRequest> createRepeated() => $pb.PbList<FBLogPurchaseMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static FBLogPurchaseMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FBLogPurchaseMessageRequest>(create);
  static FBLogPurchaseMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get amount => $_getN(0);
  @$pb.TagNumber(1)
  set amount($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get currency => $_getSZ(1);
  @$pb.TagNumber(2)
  set currency($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrency() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrency() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get eventParameter => $_getMap(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
