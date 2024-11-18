import cat.durban.sergio.flutter_meta_appads_sdk.proto.LogStandardEventMessage
import com.facebook.appevents.AppEventsConstants

object ProtoStandardParametersToStandardParameters {
    fun convert(parameter: LogStandardEventMessage.FBStandardParameters): String? = when (parameter) {
        LogStandardEventMessage.FBStandardParameters.ParameterNameContent -> AppEventsConstants.EVENT_PARAM_CONTENT
        LogStandardEventMessage.FBStandardParameters.ParameterNameContentID -> AppEventsConstants.EVENT_PARAM_CONTENT_ID
        LogStandardEventMessage.FBStandardParameters.ParameterNameContentType -> AppEventsConstants.EVENT_PARAM_CONTENT_TYPE
        LogStandardEventMessage.FBStandardParameters.ParameterNameCurrency -> AppEventsConstants.EVENT_PARAM_CURRENCY
        LogStandardEventMessage.FBStandardParameters.ParameterNameDescription -> AppEventsConstants.EVENT_PARAM_DESCRIPTION
        LogStandardEventMessage.FBStandardParameters.ParameterNameLevel -> AppEventsConstants.EVENT_PARAM_LEVEL
        LogStandardEventMessage.FBStandardParameters.ParameterNameMaxRatingValue -> AppEventsConstants.EVENT_PARAM_MAX_RATING_VALUE
        LogStandardEventMessage.FBStandardParameters.ParameterNameNumItems -> AppEventsConstants.EVENT_PARAM_NUM_ITEMS
        LogStandardEventMessage.FBStandardParameters.ParameterNamePaymentInfoAvailable -> AppEventsConstants.EVENT_PARAM_PAYMENT_INFO_AVAILABLE
        LogStandardEventMessage.FBStandardParameters.ParameterNameRegistrationMethod -> AppEventsConstants.EVENT_PARAM_REGISTRATION_METHOD
        LogStandardEventMessage.FBStandardParameters.ParameterNameSearchString -> AppEventsConstants.EVENT_PARAM_SEARCH_STRING
        LogStandardEventMessage.FBStandardParameters.ParameterNameSuccess -> AppEventsConstants.EVENT_PARAM_SUCCESS
        LogStandardEventMessage.FBStandardParameters.ParameterNameAdType -> AppEventsConstants.EVENT_PARAM_AD_TYPE
        LogStandardEventMessage.FBStandardParameters.ParameterNameOrderID -> AppEventsConstants.EVENT_PARAM_ORDER_ID
        LogStandardEventMessage.FBStandardParameters.ParameterNameEventName -> null
        LogStandardEventMessage.FBStandardParameters.ParameterNameLogTime -> null
        LogStandardEventMessage.FBStandardParameters.UNRECOGNIZED -> null
    }
}