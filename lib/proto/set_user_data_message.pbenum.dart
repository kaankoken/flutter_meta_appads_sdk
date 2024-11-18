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

class FBUserDataType extends $pb.ProtobufEnum {
  static const FBUserDataType Email =
      FBUserDataType._(0, _omitEnumNames ? '' : 'Email');
  static const FBUserDataType FirstName =
      FBUserDataType._(1, _omitEnumNames ? '' : 'FirstName');
  static const FBUserDataType LastName =
      FBUserDataType._(2, _omitEnumNames ? '' : 'LastName');
  static const FBUserDataType Phone =
      FBUserDataType._(3, _omitEnumNames ? '' : 'Phone');
  static const FBUserDataType DateOfBirth =
      FBUserDataType._(4, _omitEnumNames ? '' : 'DateOfBirth');
  static const FBUserDataType Gender =
      FBUserDataType._(5, _omitEnumNames ? '' : 'Gender');
  static const FBUserDataType City =
      FBUserDataType._(6, _omitEnumNames ? '' : 'City');
  static const FBUserDataType State =
      FBUserDataType._(7, _omitEnumNames ? '' : 'State');
  static const FBUserDataType Zip =
      FBUserDataType._(8, _omitEnumNames ? '' : 'Zip');
  static const FBUserDataType Country =
      FBUserDataType._(9, _omitEnumNames ? '' : 'Country');
  static const FBUserDataType ExternalId =
      FBUserDataType._(10, _omitEnumNames ? '' : 'ExternalId');

  static const $core.List<FBUserDataType> values = <FBUserDataType>[
    Email,
    FirstName,
    LastName,
    Phone,
    DateOfBirth,
    Gender,
    City,
    State,
    Zip,
    Country,
    ExternalId,
  ];

  static final $core.Map<$core.int, FBUserDataType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FBUserDataType? valueOf($core.int value) => _byValue[value];

  const FBUserDataType._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
