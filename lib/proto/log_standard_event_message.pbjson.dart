//
//  Generated code. Do not modify.
//  source: log_standard_event_message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fBStandardEventsDescriptor instead')
const FBStandardEvents$json = {
  '1': 'FBStandardEvents',
  '2': [
    {'1': 'AdClick', '2': 0},
    {'1': 'AdImpression', '2': 1},
    {'1': 'CompletedRegistration', '2': 2},
    {'1': 'CompletedTutorial', '2': 3},
    {'1': 'Contact', '2': 4},
    {'1': 'CustomizeProduct', '2': 5},
    {'1': 'Donate', '2': 6},
    {'1': 'FindLocation', '2': 7},
    {'1': 'Rated', '2': 8},
    {'1': 'Schedule', '2': 9},
    {'1': 'Searched', '2': 10},
    {'1': 'StartTrial', '2': 11},
    {'1': 'SubmitApplication', '2': 12},
    {'1': 'Subscribe', '2': 13},
    {'1': 'ViewedContent', '2': 14},
    {'1': 'AddedPaymentInfo', '2': 15},
    {'1': 'AddedToCart', '2': 16},
    {'1': 'AddedToWishlist', '2': 17},
    {'1': 'InitiatedCheckout', '2': 18},
    {'1': 'Purchased', '2': 19},
    {'1': 'AchievedLevel', '2': 20},
    {'1': 'UnlockedAchievement', '2': 21},
    {'1': 'SpentCredits', '2': 22},
  ],
};

/// Descriptor for `FBStandardEvents`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fBStandardEventsDescriptor = $convert.base64Decode(
    'ChBGQlN0YW5kYXJkRXZlbnRzEgsKB0FkQ2xpY2sQABIQCgxBZEltcHJlc3Npb24QARIZChVDb2'
    '1wbGV0ZWRSZWdpc3RyYXRpb24QAhIVChFDb21wbGV0ZWRUdXRvcmlhbBADEgsKB0NvbnRhY3QQ'
    'BBIUChBDdXN0b21pemVQcm9kdWN0EAUSCgoGRG9uYXRlEAYSEAoMRmluZExvY2F0aW9uEAcSCQ'
    'oFUmF0ZWQQCBIMCghTY2hlZHVsZRAJEgwKCFNlYXJjaGVkEAoSDgoKU3RhcnRUcmlhbBALEhUK'
    'EVN1Ym1pdEFwcGxpY2F0aW9uEAwSDQoJU3Vic2NyaWJlEA0SEQoNVmlld2VkQ29udGVudBAOEh'
    'QKEEFkZGVkUGF5bWVudEluZm8QDxIPCgtBZGRlZFRvQ2FydBAQEhMKD0FkZGVkVG9XaXNobGlz'
    'dBAREhUKEUluaXRpYXRlZENoZWNrb3V0EBISDQoJUHVyY2hhc2VkEBMSEQoNQWNoaWV2ZWRMZX'
    'ZlbBAUEhcKE1VubG9ja2VkQWNoaWV2ZW1lbnQQFRIQCgxTcGVudENyZWRpdHMQFg==');

@$core.Deprecated('Use fBStandardParametersDescriptor instead')
const FBStandardParameters$json = {
  '1': 'FBStandardParameters',
  '2': [
    {'1': 'ParameterNameContent', '2': 0},
    {'1': 'ParameterNameContentID', '2': 1},
    {'1': 'ParameterNameContentType', '2': 2},
    {'1': 'ParameterNameCurrency', '2': 3},
    {'1': 'ParameterNameDescription', '2': 4},
    {'1': 'ParameterNameLevel', '2': 5},
    {'1': 'ParameterNameMaxRatingValue', '2': 6},
    {'1': 'ParameterNameNumItems', '2': 7},
    {'1': 'ParameterNamePaymentInfoAvailable', '2': 8},
    {'1': 'ParameterNameRegistrationMethod', '2': 9},
    {'1': 'ParameterNameSearchString', '2': 10},
    {'1': 'ParameterNameSuccess', '2': 11},
    {'1': 'ParameterNameAdType', '2': 12},
    {'1': 'ParameterNameOrderID', '2': 13},
    {'1': 'ParameterNameEventName', '2': 14},
    {'1': 'ParameterNameLogTime', '2': 15},
  ],
};

/// Descriptor for `FBStandardParameters`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fBStandardParametersDescriptor = $convert.base64Decode(
    'ChRGQlN0YW5kYXJkUGFyYW1ldGVycxIYChRQYXJhbWV0ZXJOYW1lQ29udGVudBAAEhoKFlBhcm'
    'FtZXRlck5hbWVDb250ZW50SUQQARIcChhQYXJhbWV0ZXJOYW1lQ29udGVudFR5cGUQAhIZChVQ'
    'YXJhbWV0ZXJOYW1lQ3VycmVuY3kQAxIcChhQYXJhbWV0ZXJOYW1lRGVzY3JpcHRpb24QBBIWCh'
    'JQYXJhbWV0ZXJOYW1lTGV2ZWwQBRIfChtQYXJhbWV0ZXJOYW1lTWF4UmF0aW5nVmFsdWUQBhIZ'
    'ChVQYXJhbWV0ZXJOYW1lTnVtSXRlbXMQBxIlCiFQYXJhbWV0ZXJOYW1lUGF5bWVudEluZm9Bdm'
    'FpbGFibGUQCBIjCh9QYXJhbWV0ZXJOYW1lUmVnaXN0cmF0aW9uTWV0aG9kEAkSHQoZUGFyYW1l'
    'dGVyTmFtZVNlYXJjaFN0cmluZxAKEhgKFFBhcmFtZXRlck5hbWVTdWNjZXNzEAsSFwoTUGFyYW'
    '1ldGVyTmFtZUFkVHlwZRAMEhgKFFBhcmFtZXRlck5hbWVPcmRlcklEEA0SGgoWUGFyYW1ldGVy'
    'TmFtZUV2ZW50TmFtZRAOEhgKFFBhcmFtZXRlck5hbWVMb2dUaW1lEA8=');

@$core.Deprecated('Use fBLogStandardEventMessageRequestDescriptor instead')
const FBLogStandardEventMessageRequest$json = {
  '1': 'FBLogStandardEventMessageRequest',
  '2': [
    {
      '1': 'eventName',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.FBStandardEvents',
      '10': 'eventName'
    },
    {
      '1': 'eventParameter',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.FBDefaultParameter',
      '10': 'eventParameter'
    },
  ],
};

/// Descriptor for `FBLogStandardEventMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fBLogStandardEventMessageRequestDescriptor =
    $convert.base64Decode(
        'CiBGQkxvZ1N0YW5kYXJkRXZlbnRNZXNzYWdlUmVxdWVzdBIvCglldmVudE5hbWUYASABKA4yES'
        '5GQlN0YW5kYXJkRXZlbnRzUglldmVudE5hbWUSOwoOZXZlbnRQYXJhbWV0ZXIYAiADKAsyEy5G'
        'QkRlZmF1bHRQYXJhbWV0ZXJSDmV2ZW50UGFyYW1ldGVy');

@$core.Deprecated('Use fBDefaultParameterDescriptor instead')
const FBDefaultParameter$json = {
  '1': 'FBDefaultParameter',
  '2': [
    {
      '1': 'parameterName',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.FBStandardParameters',
      '10': 'parameterName'
    },
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `FBDefaultParameter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fBDefaultParameterDescriptor = $convert.base64Decode(
    'ChJGQkRlZmF1bHRQYXJhbWV0ZXISOwoNcGFyYW1ldGVyTmFtZRgBIAEoDjIVLkZCU3RhbmRhcm'
    'RQYXJhbWV0ZXJzUg1wYXJhbWV0ZXJOYW1lEhQKBXZhbHVlGAIgASgJUgV2YWx1ZQ==');
