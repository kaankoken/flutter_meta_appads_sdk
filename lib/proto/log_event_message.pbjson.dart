//
//  Generated code. Do not modify.
//  source: log_event_message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fBLogEventMessageRequestDescriptor instead')
const FBLogEventMessageRequest$json = {
  '1': 'FBLogEventMessageRequest',
  '2': [
    {'1': 'eventName', '3': 1, '4': 1, '5': 9, '10': 'eventName'},
    {'1': 'eventParameter', '3': 2, '4': 3, '5': 11, '6': '.FBLogEventMessageRequest.EventParameterEntry', '10': 'eventParameter'},
  ],
  '3': [FBLogEventMessageRequest_EventParameterEntry$json],
};

@$core.Deprecated('Use fBLogEventMessageRequestDescriptor instead')
const FBLogEventMessageRequest_EventParameterEntry$json = {
  '1': 'EventParameterEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FBLogEventMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fBLogEventMessageRequestDescriptor = $convert.base64Decode(
    'ChhGQkxvZ0V2ZW50TWVzc2FnZVJlcXVlc3QSHAoJZXZlbnROYW1lGAEgASgJUglldmVudE5hbW'
    'USVQoOZXZlbnRQYXJhbWV0ZXIYAiADKAsyLS5GQkxvZ0V2ZW50TWVzc2FnZVJlcXVlc3QuRXZl'
    'bnRQYXJhbWV0ZXJFbnRyeVIOZXZlbnRQYXJhbWV0ZXIaQQoTRXZlbnRQYXJhbWV0ZXJFbnRyeR'
    'IQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

