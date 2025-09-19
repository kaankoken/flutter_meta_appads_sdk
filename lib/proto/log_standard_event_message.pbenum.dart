// This is a generated file - do not edit.
//
// Generated from log_standard_event_message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FBStandardEvents extends $pb.ProtobufEnum {
  static const FBStandardEvents AdClick =
      FBStandardEvents._(0, _omitEnumNames ? '' : 'AdClick');
  static const FBStandardEvents AdImpression =
      FBStandardEvents._(1, _omitEnumNames ? '' : 'AdImpression');
  static const FBStandardEvents CompletedRegistration =
      FBStandardEvents._(2, _omitEnumNames ? '' : 'CompletedRegistration');
  static const FBStandardEvents CompletedTutorial =
      FBStandardEvents._(3, _omitEnumNames ? '' : 'CompletedTutorial');
  static const FBStandardEvents Contact =
      FBStandardEvents._(4, _omitEnumNames ? '' : 'Contact');
  static const FBStandardEvents CustomizeProduct =
      FBStandardEvents._(5, _omitEnumNames ? '' : 'CustomizeProduct');
  static const FBStandardEvents Donate =
      FBStandardEvents._(6, _omitEnumNames ? '' : 'Donate');
  static const FBStandardEvents FindLocation =
      FBStandardEvents._(7, _omitEnumNames ? '' : 'FindLocation');
  static const FBStandardEvents Rated =
      FBStandardEvents._(8, _omitEnumNames ? '' : 'Rated');
  static const FBStandardEvents Schedule =
      FBStandardEvents._(9, _omitEnumNames ? '' : 'Schedule');
  static const FBStandardEvents Searched =
      FBStandardEvents._(10, _omitEnumNames ? '' : 'Searched');
  static const FBStandardEvents StartTrial =
      FBStandardEvents._(11, _omitEnumNames ? '' : 'StartTrial');
  static const FBStandardEvents SubmitApplication =
      FBStandardEvents._(12, _omitEnumNames ? '' : 'SubmitApplication');
  static const FBStandardEvents Subscribe =
      FBStandardEvents._(13, _omitEnumNames ? '' : 'Subscribe');
  static const FBStandardEvents ViewedContent =
      FBStandardEvents._(14, _omitEnumNames ? '' : 'ViewedContent');
  static const FBStandardEvents AddedPaymentInfo =
      FBStandardEvents._(15, _omitEnumNames ? '' : 'AddedPaymentInfo');
  static const FBStandardEvents AddedToCart =
      FBStandardEvents._(16, _omitEnumNames ? '' : 'AddedToCart');
  static const FBStandardEvents AddedToWishlist =
      FBStandardEvents._(17, _omitEnumNames ? '' : 'AddedToWishlist');
  static const FBStandardEvents InitiatedCheckout =
      FBStandardEvents._(18, _omitEnumNames ? '' : 'InitiatedCheckout');
  static const FBStandardEvents Purchased =
      FBStandardEvents._(19, _omitEnumNames ? '' : 'Purchased');
  static const FBStandardEvents AchievedLevel =
      FBStandardEvents._(20, _omitEnumNames ? '' : 'AchievedLevel');
  static const FBStandardEvents UnlockedAchievement =
      FBStandardEvents._(21, _omitEnumNames ? '' : 'UnlockedAchievement');
  static const FBStandardEvents SpentCredits =
      FBStandardEvents._(22, _omitEnumNames ? '' : 'SpentCredits');

  static const $core.List<FBStandardEvents> values = <FBStandardEvents>[
    AdClick,
    AdImpression,
    CompletedRegistration,
    CompletedTutorial,
    Contact,
    CustomizeProduct,
    Donate,
    FindLocation,
    Rated,
    Schedule,
    Searched,
    StartTrial,
    SubmitApplication,
    Subscribe,
    ViewedContent,
    AddedPaymentInfo,
    AddedToCart,
    AddedToWishlist,
    InitiatedCheckout,
    Purchased,
    AchievedLevel,
    UnlockedAchievement,
    SpentCredits,
  ];

  static final $core.List<FBStandardEvents?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 22);
  static FBStandardEvents? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FBStandardEvents._(super.value, super.name);
}

class FBStandardParameters extends $pb.ProtobufEnum {
  static const FBStandardParameters ParameterNameContent =
      FBStandardParameters._(0, _omitEnumNames ? '' : 'ParameterNameContent');
  static const FBStandardParameters ParameterNameContentID =
      FBStandardParameters._(1, _omitEnumNames ? '' : 'ParameterNameContentID');
  static const FBStandardParameters ParameterNameContentType =
      FBStandardParameters._(
          2, _omitEnumNames ? '' : 'ParameterNameContentType');
  static const FBStandardParameters ParameterNameCurrency =
      FBStandardParameters._(3, _omitEnumNames ? '' : 'ParameterNameCurrency');
  static const FBStandardParameters ParameterNameDescription =
      FBStandardParameters._(
          4, _omitEnumNames ? '' : 'ParameterNameDescription');
  static const FBStandardParameters ParameterNameLevel =
      FBStandardParameters._(5, _omitEnumNames ? '' : 'ParameterNameLevel');
  static const FBStandardParameters ParameterNameMaxRatingValue =
      FBStandardParameters._(
          6, _omitEnumNames ? '' : 'ParameterNameMaxRatingValue');
  static const FBStandardParameters ParameterNameNumItems =
      FBStandardParameters._(7, _omitEnumNames ? '' : 'ParameterNameNumItems');
  static const FBStandardParameters ParameterNamePaymentInfoAvailable =
      FBStandardParameters._(
          8, _omitEnumNames ? '' : 'ParameterNamePaymentInfoAvailable');
  static const FBStandardParameters ParameterNameRegistrationMethod =
      FBStandardParameters._(
          9, _omitEnumNames ? '' : 'ParameterNameRegistrationMethod');
  static const FBStandardParameters ParameterNameSearchString =
      FBStandardParameters._(
          10, _omitEnumNames ? '' : 'ParameterNameSearchString');
  static const FBStandardParameters ParameterNameSuccess =
      FBStandardParameters._(11, _omitEnumNames ? '' : 'ParameterNameSuccess');
  static const FBStandardParameters ParameterNameAdType =
      FBStandardParameters._(12, _omitEnumNames ? '' : 'ParameterNameAdType');
  static const FBStandardParameters ParameterNameOrderID =
      FBStandardParameters._(13, _omitEnumNames ? '' : 'ParameterNameOrderID');
  static const FBStandardParameters ParameterNameEventName =
      FBStandardParameters._(
          14, _omitEnumNames ? '' : 'ParameterNameEventName');
  static const FBStandardParameters ParameterNameLogTime =
      FBStandardParameters._(15, _omitEnumNames ? '' : 'ParameterNameLogTime');

  static const $core.List<FBStandardParameters> values = <FBStandardParameters>[
    ParameterNameContent,
    ParameterNameContentID,
    ParameterNameContentType,
    ParameterNameCurrency,
    ParameterNameDescription,
    ParameterNameLevel,
    ParameterNameMaxRatingValue,
    ParameterNameNumItems,
    ParameterNamePaymentInfoAvailable,
    ParameterNameRegistrationMethod,
    ParameterNameSearchString,
    ParameterNameSuccess,
    ParameterNameAdType,
    ParameterNameOrderID,
    ParameterNameEventName,
    ParameterNameLogTime,
  ];

  static final $core.List<FBStandardParameters?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 15);
  static FBStandardParameters? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FBStandardParameters._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
