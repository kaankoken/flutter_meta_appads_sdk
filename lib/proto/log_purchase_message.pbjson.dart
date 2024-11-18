//
//  Generated code. Do not modify.
//  source: log_purchase_message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fBLogPurchaseMessageRequestDescriptor instead')
const FBLogPurchaseMessageRequest$json = {
  '1': 'FBLogPurchaseMessageRequest',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'currency', '3': 2, '4': 1, '5': 9, '10': 'currency'},
    {
      '1': 'eventParameter',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.FBLogPurchaseMessageRequest.EventParameterEntry',
      '10': 'eventParameter'
    },
  ],
  '3': [FBLogPurchaseMessageRequest_EventParameterEntry$json],
};

@$core.Deprecated('Use fBLogPurchaseMessageRequestDescriptor instead')
const FBLogPurchaseMessageRequest_EventParameterEntry$json = {
  '1': 'EventParameterEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FBLogPurchaseMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fBLogPurchaseMessageRequestDescriptor = $convert.base64Decode(
    'ChtGQkxvZ1B1cmNoYXNlTWVzc2FnZVJlcXVlc3QSFgoGYW1vdW50GAEgASgBUgZhbW91bnQSGg'
    'oIY3VycmVuY3kYAiABKAlSCGN1cnJlbmN5ElgKDmV2ZW50UGFyYW1ldGVyGAMgAygLMjAuRkJM'
    'b2dQdXJjaGFzZU1lc3NhZ2VSZXF1ZXN0LkV2ZW50UGFyYW1ldGVyRW50cnlSDmV2ZW50UGFyYW'
    '1ldGVyGkEKE0V2ZW50UGFyYW1ldGVyRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUY'
    'AiABKAlSBXZhbHVlOgI4AQ==');
