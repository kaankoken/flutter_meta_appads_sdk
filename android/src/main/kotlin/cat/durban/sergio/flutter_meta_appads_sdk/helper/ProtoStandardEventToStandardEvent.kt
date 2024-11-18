import cat.durban.sergio.flutter_meta_appads_sdk.proto.LogStandardEventMessage
import com.facebook.appevents.AppEventsConstants

object ProtoStandardEventToStandardEvent {
    fun convert(event: LogStandardEventMessage.FBStandardEvents): String? =
        when (event) {
            LogStandardEventMessage.FBStandardEvents.AdClick -> AppEventsConstants.EVENT_NAME_AD_CLICK
            LogStandardEventMessage.FBStandardEvents.AdImpression -> AppEventsConstants.EVENT_NAME_AD_IMPRESSION
            LogStandardEventMessage.FBStandardEvents.CompletedRegistration -> AppEventsConstants.EVENT_NAME_COMPLETED_REGISTRATION
            LogStandardEventMessage.FBStandardEvents.CompletedTutorial -> AppEventsConstants.EVENT_NAME_COMPLETED_TUTORIAL
            LogStandardEventMessage.FBStandardEvents.Contact -> AppEventsConstants.EVENT_NAME_CONTACT
            LogStandardEventMessage.FBStandardEvents.CustomizeProduct -> AppEventsConstants.EVENT_NAME_CUSTOMIZE_PRODUCT
            LogStandardEventMessage.FBStandardEvents.Donate -> AppEventsConstants.EVENT_NAME_DONATE
            LogStandardEventMessage.FBStandardEvents.FindLocation -> AppEventsConstants.EVENT_NAME_FIND_LOCATION
            LogStandardEventMessage.FBStandardEvents.Rated -> AppEventsConstants.EVENT_NAME_RATED
            LogStandardEventMessage.FBStandardEvents.Schedule -> AppEventsConstants.EVENT_NAME_SCHEDULE
            LogStandardEventMessage.FBStandardEvents.Searched -> AppEventsConstants.EVENT_NAME_SEARCHED
            LogStandardEventMessage.FBStandardEvents.StartTrial -> AppEventsConstants.EVENT_NAME_START_TRIAL
            LogStandardEventMessage.FBStandardEvents.SubmitApplication -> AppEventsConstants.EVENT_NAME_SUBMIT_APPLICATION
            LogStandardEventMessage.FBStandardEvents.Subscribe -> AppEventsConstants.EVENT_NAME_SUBSCRIBE
            LogStandardEventMessage.FBStandardEvents.ViewedContent -> AppEventsConstants.EVENT_NAME_VIEWED_CONTENT
            LogStandardEventMessage.FBStandardEvents.AddedPaymentInfo -> AppEventsConstants.EVENT_NAME_ADDED_PAYMENT_INFO
            LogStandardEventMessage.FBStandardEvents.AddedToCart -> AppEventsConstants.EVENT_NAME_ADDED_TO_CART
            LogStandardEventMessage.FBStandardEvents.AddedToWishlist -> AppEventsConstants.EVENT_NAME_ADDED_TO_WISHLIST
            LogStandardEventMessage.FBStandardEvents.InitiatedCheckout -> AppEventsConstants.EVENT_NAME_INITIATED_CHECKOUT
            LogStandardEventMessage.FBStandardEvents.Purchased -> AppEventsConstants.EVENT_NAME_PURCHASED
            LogStandardEventMessage.FBStandardEvents.AchievedLevel -> AppEventsConstants.EVENT_NAME_ACHIEVED_LEVEL
            LogStandardEventMessage.FBStandardEvents.UnlockedAchievement -> AppEventsConstants.EVENT_NAME_UNLOCKED_ACHIEVEMENT
            LogStandardEventMessage.FBStandardEvents.SpentCredits -> AppEventsConstants.EVENT_NAME_SPENT_CREDITS
            LogStandardEventMessage.FBStandardEvents.UNRECOGNIZED -> null
        }
}
