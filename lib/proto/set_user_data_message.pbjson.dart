// This is a generated file - do not edit.
//
// Generated from set_user_data_message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fBUserDataTypeDescriptor instead')
const FBUserDataType$json = {
  '1': 'FBUserDataType',
  '2': [
    {'1': 'Email', '2': 0},
    {'1': 'FirstName', '2': 1},
    {'1': 'LastName', '2': 2},
    {'1': 'Phone', '2': 3},
    {'1': 'DateOfBirth', '2': 4},
    {'1': 'Gender', '2': 5},
    {'1': 'City', '2': 6},
    {'1': 'State', '2': 7},
    {'1': 'Zip', '2': 8},
    {'1': 'Country', '2': 9},
    {'1': 'ExternalId', '2': 10},
  ],
};

/// Descriptor for `FBUserDataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fBUserDataTypeDescriptor = $convert.base64Decode(
    'Cg5GQlVzZXJEYXRhVHlwZRIJCgVFbWFpbBAAEg0KCUZpcnN0TmFtZRABEgwKCExhc3ROYW1lEA'
    'ISCQoFUGhvbmUQAxIPCgtEYXRlT2ZCaXJ0aBAEEgoKBkdlbmRlchAFEggKBENpdHkQBhIJCgVT'
    'dGF0ZRAHEgcKA1ppcBAIEgsKB0NvdW50cnkQCRIOCgpFeHRlcm5hbElkEAo=');

@$core.Deprecated('Use fBSetUserDataRequestDescriptor instead')
const FBSetUserDataRequest$json = {
  '1': 'FBSetUserDataRequest',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.FBUserDataType',
      '9': 0,
      '10': 'type',
      '17': true
    },
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '8': [
    {'1': '_type'},
  ],
};

/// Descriptor for `FBSetUserDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fBSetUserDataRequestDescriptor = $convert.base64Decode(
    'ChRGQlNldFVzZXJEYXRhUmVxdWVzdBIoCgR0eXBlGAEgASgOMg8uRkJVc2VyRGF0YVR5cGVIAF'
    'IEdHlwZYgBARIUCgV2YWx1ZRgCIAEoCVIFdmFsdWVCBwoFX3R5cGU=');
