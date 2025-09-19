// This is a generated file - do not edit.
//
// Generated from log_purchase_message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class FBLogPurchaseMessageRequest extends $pb.GeneratedMessage {
  factory FBLogPurchaseMessageRequest({
    $core.double? amount,
    $core.String? currency,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? eventParameter,
  }) {
    final result = create();
    if (amount != null) result.amount = amount;
    if (currency != null) result.currency = currency;
    if (eventParameter != null)
      result.eventParameter.addEntries(eventParameter);
    return result;
  }

  FBLogPurchaseMessageRequest._();

  factory FBLogPurchaseMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FBLogPurchaseMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FBLogPurchaseMessageRequest',
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(2, _omitFieldNames ? '' : 'currency')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'eventParameter',
        protoName: 'eventParameter',
        entryClassName: 'FBLogPurchaseMessageRequest.EventParameterEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBLogPurchaseMessageRequest clone() =>
      FBLogPurchaseMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FBLogPurchaseMessageRequest copyWith(
          void Function(FBLogPurchaseMessageRequest) updates) =>
      super.copyWith(
              (message) => updates(message as FBLogPurchaseMessageRequest))
          as FBLogPurchaseMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FBLogPurchaseMessageRequest create() =>
      FBLogPurchaseMessageRequest._();
  @$core.override
  FBLogPurchaseMessageRequest createEmptyInstance() => create();
  static $pb.PbList<FBLogPurchaseMessageRequest> createRepeated() =>
      $pb.PbList<FBLogPurchaseMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static FBLogPurchaseMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FBLogPurchaseMessageRequest>(create);
  static FBLogPurchaseMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get amount => $_getN(0);
  @$pb.TagNumber(1)
  set amount($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAmount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get currency => $_getSZ(1);
  @$pb.TagNumber(2)
  set currency($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrency() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrency() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get eventParameter => $_getMap(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
