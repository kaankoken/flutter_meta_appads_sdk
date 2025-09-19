import '../proto/log_event_message.pb.dart';
import '../proto/log_purchase_message.pb.dart';
import '../proto/log_standard_event_message.pb.dart';
import '../proto/set_data_processing_options.pb.dart';
import '../proto/set_user_data_message.pb.dart' as ProtoSUD;
import 'fb_log_event_command.dart';
import 'fb_log_purchase_command.dart';
import 'fb_log_standard_event_command.dart';
import 'fb_set_data_processing_options_command.dart';
import 'fb_set_user_data_command.dart';

class ObjectsToProtoCommunications {
  static FBLogEventMessageRequest logEventCommandToProto(
      FBLogEventCommand command) {
    return FBLogEventMessageRequest(
      eventName: command.eventName,
      eventParameter: command.eventParameters.entries,
    );
  }

  static FBLogPurchaseMessageRequest logPurchaseCommandToProto(
      FBLogPurchaseCommand command) {
    return FBLogPurchaseMessageRequest(
      amount: command.amount,
      currency: command.currency,
      eventParameter: command.eventParameter.entries,
    );
  }

  static FBLogStandardEventMessageRequest logStandardEventCommandToProto(
      FBLogStandardEventCommand command) {
    return FBLogStandardEventMessageRequest(
      eventName: _eventToProtoEnum(command.event),
      eventParameter: _eventParametersToProtoEnum(command.parameters),
    );
  }

  static FBSetDataProcessingOptionsRequest setDataProcessingCommandToProto(
      FBSetDataProcessingOptionsCommand command) {
    return FBSetDataProcessingOptionsRequest(
      modes: command.modes,
      country: command.country,
      state: command.state,
    );
  }

  static ProtoSUD.FBSetUserDataRequest setUserDataCommandToProto(
    FBSetUserDataCommand command,
  ) {
    return ProtoSUD.FBSetUserDataRequest(
      type: _userTypeToProto(command.type),
      value: command.value,
    );
  }

  static FBStandardEvents _eventToProtoEnum(
    FBStandardEvent event,
  ) {
    switch (event) {
      case FBStandardEvent.adClick:
        return FBStandardEvents.AdClick;
      case FBStandardEvent.adImpression:
        return FBStandardEvents.AdImpression;
      case FBStandardEvent.completedRegistration:
        return FBStandardEvents.CompletedRegistration;
      case FBStandardEvent.completedTutorial:
        return FBStandardEvents.CompletedTutorial;
      case FBStandardEvent.contact:
        return FBStandardEvents.Contact;
      case FBStandardEvent.customizeProduct:
        return FBStandardEvents.CustomizeProduct;
      case FBStandardEvent.donate:
        return FBStandardEvents.Donate;
      case FBStandardEvent.findLocation:
        return FBStandardEvents.FindLocation;
      case FBStandardEvent.rated:
        return FBStandardEvents.Rated;
      case FBStandardEvent.schedule:
        return FBStandardEvents.Schedule;
      case FBStandardEvent.searched:
        return FBStandardEvents.Searched;
      case FBStandardEvent.startTrial:
        return FBStandardEvents.StartTrial;
      case FBStandardEvent.submitApplication:
        return FBStandardEvents.SubmitApplication;
      case FBStandardEvent.subscribe:
        return FBStandardEvents.Subscribe;
      case FBStandardEvent.viewedContent:
        return FBStandardEvents.ViewedContent;
      case FBStandardEvent.addedPaymentInfo:
        return FBStandardEvents.AddedPaymentInfo;
      case FBStandardEvent.addedToCart:
        return FBStandardEvents.AddedToCart;
      case FBStandardEvent.addedToWishlist:
        return FBStandardEvents.AddedToWishlist;
      case FBStandardEvent.initiatedCheckout:
        return FBStandardEvents.InitiatedCheckout;
      case FBStandardEvent.purchased:
        return FBStandardEvents.Purchased;
      case FBStandardEvent.achievedLevel:
        return FBStandardEvents.AchievedLevel;
      case FBStandardEvent.unlockedAchievement:
        return FBStandardEvents.UnlockedAchievement;
      case FBStandardEvent.spentCredits:
        return FBStandardEvents.SpentCredits;
    }
  }

  static FBStandardParameters _standardParametersToProto({
    required FBStandardParameter parameter,
  }) {
    switch (parameter) {
      case FBStandardParameter.parameterNameContent:
        return FBStandardParameters.ParameterNameContent;
      case FBStandardParameter.parameterNameContentID:
        return FBStandardParameters.ParameterNameContentID;
      case FBStandardParameter.parameterNameContentType:
        return FBStandardParameters.ParameterNameContentType;
      case FBStandardParameter.parameterNameCurrency:
        return FBStandardParameters.ParameterNameCurrency;
      case FBStandardParameter.parameterNameDescription:
        return FBStandardParameters.ParameterNameDescription;
      case FBStandardParameter.parameterNameLevel:
        return FBStandardParameters.ParameterNameLevel;
      case FBStandardParameter.parameterNameMaxRatingValue:
        return FBStandardParameters.ParameterNameMaxRatingValue;
      case FBStandardParameter.parameterNameNumItems:
        return FBStandardParameters.ParameterNameNumItems;
      case FBStandardParameter.parameterNamePaymentInfoAvailable:
        return FBStandardParameters.ParameterNamePaymentInfoAvailable;
      case FBStandardParameter.parameterNameRegistrationMethod:
        return FBStandardParameters.ParameterNameRegistrationMethod;
      case FBStandardParameter.parameterNameSearchString:
        return FBStandardParameters.ParameterNameSearchString;
      case FBStandardParameter.parameterNameSuccess:
        return FBStandardParameters.ParameterNameSuccess;
      case FBStandardParameter.parameterNameAdType:
        return FBStandardParameters.ParameterNameAdType;
      case FBStandardParameter.parameterNameOrderID:
        return FBStandardParameters.ParameterNameOrderID;
      case FBStandardParameter.parameterNameEventName:
        return FBStandardParameters.ParameterNameEventName;
      case FBStandardParameter.parameterNameLogTime:
        return FBStandardParameters.ParameterNameLogTime;
    }
  }

  static List<FBDefaultParameter> _eventParametersToProtoEnum(
    Map<FBStandardParameter, String> parameters,
  ) {
    List<FBDefaultParameter> protoSMParameters = [];

    parameters.forEach(
      (key, value) => protoSMParameters.add(
        FBDefaultParameter(
          parameterName: _standardParametersToProto(parameter: key),
          value: value,
        ),
      ),
    );

    return protoSMParameters;
  }

  static ProtoSUD.FBUserDataType _userTypeToProto(FBUserDataType type) {
    switch (type) {
      case FBUserDataType.email:
        return ProtoSUD.FBUserDataType.Email;
      case FBUserDataType.firstName:
        return ProtoSUD.FBUserDataType.FirstName;
      case FBUserDataType.lastName:
        return ProtoSUD.FBUserDataType.LastName;
      case FBUserDataType.phone:
        return ProtoSUD.FBUserDataType.Phone;
      case FBUserDataType.dateOfBirth:
        return ProtoSUD.FBUserDataType.DateOfBirth;
      case FBUserDataType.gender:
        return ProtoSUD.FBUserDataType.Gender;
      case FBUserDataType.city:
        return ProtoSUD.FBUserDataType.City;
      case FBUserDataType.state:
        return ProtoSUD.FBUserDataType.State;
      case FBUserDataType.zip:
        return ProtoSUD.FBUserDataType.Zip;
      case FBUserDataType.country:
        return ProtoSUD.FBUserDataType.Country;
      case FBUserDataType.externalId:
        return ProtoSUD.FBUserDataType.ExternalId;
    }
  }
}
