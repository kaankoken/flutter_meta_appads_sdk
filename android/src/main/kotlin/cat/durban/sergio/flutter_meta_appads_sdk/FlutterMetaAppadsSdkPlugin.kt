package cat.durban.sergio.flutter_meta_appads_sdk

import FBUserData
import android.app.Activity
import android.content.Context
import android.os.Bundle
import android.util.Log
import cat.durban.sergio.flutter_meta_appads_sdk.proto.FbAnonIdMessage
import cat.durban.sergio.flutter_meta_appads_sdk.proto.LogEventMessage.FBLogEventMessageRequest
import cat.durban.sergio.flutter_meta_appads_sdk.proto.LogPurchaseMessage.FBLogPurchaseMessageRequest
import cat.durban.sergio.flutter_meta_appads_sdk.proto.LogStandardEventMessage.FBLogStandardEventMessageRequest
import cat.durban.sergio.flutter_meta_appads_sdk.proto.SetUserDataMessage
import cat.durban.sergio.flutter_meta_appads_sdk.proto.SetDataProcessingOptions

import com.facebook.AccessToken
import com.facebook.FacebookSdk
import com.facebook.LoggingBehavior
import com.facebook.Profile
import com.facebook.appevents.AppEventsConstants
import com.facebook.appevents.AppEventsLogger

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodChannel.Result
import java.util.Currency
import java.util.Optional
import kotlin.jvm.optionals.getOrNull

/** FlutterMetaAppadsSdkPlugin */
class FlutterMetaAppadsSdkPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel
  private lateinit var eventsLogger: AppEventsLogger
  private var userData: FBUserData = FBUserData
  private lateinit var context: Context
  private var loggingEnabled: Boolean = false

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_meta_appads_sdk")
    channel.setMethodCallHandler(this)
    eventsLogger = AppEventsLogger.newLogger(flutterPluginBinding.applicationContext)
    context = flutterPluginBinding.applicationContext
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when (call.method) {
      "initSdk" -> {
        call.argument<Boolean>("enableLogging")?.let {
          loggingEnabled = it
        }
        if (loggingEnabled) {
          FacebookSdk.addLoggingBehavior(LoggingBehavior.APP_EVENTS)
          FacebookSdk.addLoggingBehavior(LoggingBehavior.DEVELOPER_ERRORS)
        }

        FacebookSdk.setAutoInitEnabled(true)
        FacebookSdk.fullyInitialize()

        if (loggingEnabled) {
          Log.d("FBSDKLog", "Init SDK: ${FacebookSdk.isInitialized()}")
          Log.d("FBSDKLog", "SDK Version: ${FacebookSdk.getSdkVersion()}")
          Log.d("FBSDKLog", "AnonymousID: ${AppEventsLogger.getAnonymousAppDeviceGUID(context)}")
          Log.d("FBSDKLog", "TRACKING ENABLED: ${FacebookSdk.getAdvertiserIDCollectionEnabled()}")
        }

        result.success(null)
      }
      "logEvents" -> {
        val request = FBLogEventMessageRequest
          .newBuilder()
          .mergeFrom(call.arguments as ByteArray)
          .build()

        logEvent(request)

        result.success(null)
      }
      "logPurchase" -> {
        val request = FBLogPurchaseMessageRequest
          .newBuilder()
          .mergeFrom(call.arguments as ByteArray)
          .build()

        logPurchase(request)

        result.success(null)
      }
      "logStandardEvent" -> {
        val request = FBLogStandardEventMessageRequest
          .newBuilder()
          .mergeFrom(call.arguments as ByteArray)
          .build()

        logStandardEvent(request)

        result.success(null)
      }
      "setUserData" -> {
        val request = SetUserDataMessage.FBSetUserDataRequest
          .newBuilder()
          .mergeFrom(call.arguments as ByteArray)
          .build()

        setUserData(request)

        result.success(null)
      }
      "getFbAnonId" -> {
        val anonId = AppEventsLogger.getAnonymousAppDeviceGUID(context).toString()

        val data = FbAnonIdMessage.FBAnonIdResponse
          .newBuilder()
          .setFbAnonId(anonId)
          .build()

        result.success(data.toByteArray())
      }
      "setAdvertiserTrackingEnabled" -> { /* NOTHING TO DO EXCLUSIVE IOS FUNCTIONALITY */  }
      "setAdvertiserIDCollectionEnabled" -> {
        call.argument<Boolean>("isEnabled")?.let {
          FacebookSdk.setAdvertiserIDCollectionEnabled(it)

          if (loggingEnabled) {
            Log.d("FBSDKLog", "TRACKING ENABLED: ${FacebookSdk.getAdvertiserIDCollectionEnabled()}")
          }
        }
      }
      "setDataProcessingOptions" -> {
        val request = SetDataProcessingOptions.FBSetDataProcessingOptionsRequest
          .newBuilder()
          .mergeFrom(call.arguments as ByteArray)
          .build()

        if (request.hasState() && request.hasCountry()) {
          FacebookSdk.setDataProcessingOptions(
            request.modesList.toTypedArray(),
            request.country,
            request.state,
          )
        } else {
          FacebookSdk.setDataProcessingOptions(
            request.modesList.toTypedArray(),
          )
        }
      }
      else -> {
        result.notImplemented()
      }
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  private fun logEvent(request: FBLogEventMessageRequest) {
    val params = Bundle()

    for (key in request.eventParameterMap.keys) {
      val value = request.eventParameterMap[key]

      params.putString(key, value)
    }

    eventsLogger.logEvent(request.eventName, params)
  }

  private fun logPurchase(request: FBLogPurchaseMessageRequest) {
    val currency = CurrencyFinder.find(request.currency)

    eventsLogger.logPurchase(request.amount.toBigDecimal(), currency.getOrNull())
  }

  private fun logStandardEvent(request: FBLogStandardEventMessageRequest) {
    val eventName = ProtoStandardEventToStandardEvent.convert(request.eventName)
    if (eventName != null) {
      val params = Bundle()

      for (elm in request.eventParameterList) {
        val elmKey = ProtoStandardParametersToStandardParameters.convert(elm.parameterName)

        if (elmKey != null) {
          params.putString(elmKey, elm.value)
        }
      }

      eventsLogger.logEvent(eventName, params)
    }
  }

  private fun setUserData(request: SetUserDataMessage.FBSetUserDataRequest) {
    if (request.type == SetUserDataMessage.FBUserDataType.ExternalId) {
      AppEventsLogger.setUserID(request.value)
    } else {
      userData.populateFromProto(request.type, request.value)

      AppEventsLogger.setUserData(
        userData.email,
        userData.firstName,
        userData.lastName,
        userData.phone,
        userData.birthDate,
        userData.gender,
        userData.city,
        userData.state,
        userData.zipCode,
        userData.country
      )
    }
  }
}
