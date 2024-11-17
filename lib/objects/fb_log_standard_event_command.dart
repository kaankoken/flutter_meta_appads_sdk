import 'package:flutter_meta_appads_sdk/proto/log_standard_event_message.pb.dart'
    as Proto;

enum FBStandardEvent {
  adClick,
  adImpression,
  completedRegistration,
  completedTutorial,
  contact,
  customizeProduct,
  donate,
  findLocation,
  rated,
  schedule,
  searched,
  startTrial,
  submitApplication,
  subscribe,
  viewedContent,
  addedPaymentInfo,
  addedToCart,
  addedToWishlist,
  initiatedCheckout,
  purchased,
  achievedLevel,
  unlockedAchievement,
  spentCredits,
}

enum FBStandardParameter {
  parameterNameContent,
  parameterNameContentID,
  parameterNameContentType,
  parameterNameCurrency,
  parameterNameDescription,
  parameterNameLevel,
  parameterNameMaxRatingValue,
  parameterNameNumItems,
  parameterNamePaymentInfoAvailable,
  parameterNameRegistrationMethod,
  parameterNameSearchString,
  parameterNameSuccess,
  parameterNameAdType,
  parameterNameOrderID,
  parameterNameEventName,
  parameterNameLogTime,
}

class FBLogStandardEventCommand {
  final FBStandardEvent event;
  final Map<FBStandardParameter, String> parameters;

  FBLogStandardEventCommand({required this.event, required this.parameters});

  Proto.FBLogStandardEventMessageRequest toProtoRequest() {
    return Proto.FBLogStandardEventMessageRequest(
      eventName: _eventToProtoEnum(),
      eventParameter: _eventParametersToProtoEnum(),
    );
  }

  Proto.FBStandardEvents _eventToProtoEnum() {
    switch (event) {
      case FBStandardEvent.adClick:
        return Proto.FBStandardEvents.AdClick;
      case FBStandardEvent.adImpression:
        return Proto.FBStandardEvents.AdImpression;
      case FBStandardEvent.completedRegistration:
        return Proto.FBStandardEvents.CompletedRegistration;
      case FBStandardEvent.completedTutorial:
        return Proto.FBStandardEvents.CompletedTutorial;
      case FBStandardEvent.contact:
        return Proto.FBStandardEvents.Contact;
      case FBStandardEvent.customizeProduct:
        return Proto.FBStandardEvents.CustomizeProduct;
      case FBStandardEvent.donate:
        return Proto.FBStandardEvents.Donate;
      case FBStandardEvent.findLocation:
        return Proto.FBStandardEvents.FindLocation;
      case FBStandardEvent.rated:
        return Proto.FBStandardEvents.Rated;
      case FBStandardEvent.schedule:
        return Proto.FBStandardEvents.Schedule;
      case FBStandardEvent.searched:
        return Proto.FBStandardEvents.Searched;
      case FBStandardEvent.startTrial:
        return Proto.FBStandardEvents.StartTrial;
      case FBStandardEvent.submitApplication:
        return Proto.FBStandardEvents.SubmitApplication;
      case FBStandardEvent.subscribe:
        return Proto.FBStandardEvents.Subscribe;
      case FBStandardEvent.viewedContent:
        return Proto.FBStandardEvents.ViewedContent;
      case FBStandardEvent.addedPaymentInfo:
        return Proto.FBStandardEvents.AddedPaymentInfo;
      case FBStandardEvent.addedToCart:
        return Proto.FBStandardEvents.AddedToCart;
      case FBStandardEvent.addedToWishlist:
        return Proto.FBStandardEvents.AddedToWishlist;
      case FBStandardEvent.initiatedCheckout:
        return Proto.FBStandardEvents.InitiatedCheckout;
      case FBStandardEvent.purchased:
        return Proto.FBStandardEvents.Purchased;
      case FBStandardEvent.achievedLevel:
        return Proto.FBStandardEvents.AchievedLevel;
      case FBStandardEvent.unlockedAchievement:
        return Proto.FBStandardEvents.UnlockedAchievement;
      case FBStandardEvent.spentCredits:
        return Proto.FBStandardEvents.SpentCredits;
    }
  }

  Proto.FBStandardParameters _standardParametersToProto(
      {required FBStandardParameter parameter}) {
    switch (parameter) {
      case FBStandardParameter.parameterNameContent:
        return Proto.FBStandardParameters.ParameterNameContent;
      case FBStandardParameter.parameterNameContentID:
        return Proto.FBStandardParameters.ParameterNameContentID;
      case FBStandardParameter.parameterNameContentType:
        return Proto.FBStandardParameters.ParameterNameContentType;
      case FBStandardParameter.parameterNameCurrency:
        return Proto.FBStandardParameters.ParameterNameCurrency;
      case FBStandardParameter.parameterNameDescription:
        return Proto.FBStandardParameters.ParameterNameDescription;
      case FBStandardParameter.parameterNameLevel:
        return Proto.FBStandardParameters.ParameterNameLevel;
      case FBStandardParameter.parameterNameMaxRatingValue:
        return Proto.FBStandardParameters.ParameterNameMaxRatingValue;
      case FBStandardParameter.parameterNameNumItems:
        return Proto.FBStandardParameters.ParameterNameNumItems;
      case FBStandardParameter.parameterNamePaymentInfoAvailable:
        return Proto.FBStandardParameters.ParameterNamePaymentInfoAvailable;
      case FBStandardParameter.parameterNameRegistrationMethod:
        return Proto.FBStandardParameters.ParameterNameRegistrationMethod;
      case FBStandardParameter.parameterNameSearchString:
        return Proto.FBStandardParameters.ParameterNameSearchString;
      case FBStandardParameter.parameterNameSuccess:
        return Proto.FBStandardParameters.ParameterNameSuccess;
      case FBStandardParameter.parameterNameAdType:
        return Proto.FBStandardParameters.ParameterNameAdType;
      case FBStandardParameter.parameterNameOrderID:
        return Proto.FBStandardParameters.ParameterNameOrderID;
      case FBStandardParameter.parameterNameEventName:
        return Proto.FBStandardParameters.ParameterNameEventName;
      case FBStandardParameter.parameterNameLogTime:
        return Proto.FBStandardParameters.ParameterNameLogTime;
    }
  }

  List<Proto.FBDefaultParameter> _eventParametersToProtoEnum() {
    List<Proto.FBDefaultParameter> protoParameters = [];

    parameters.forEach(
      (key, value) => protoParameters.add(
        Proto.FBDefaultParameter(
          parameterName: _standardParametersToProto(parameter: key),
          value: value,
        ),
      ),
    );

    return protoParameters;
  }
}
