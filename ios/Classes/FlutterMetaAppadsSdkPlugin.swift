import FBSDKCoreKit
import Flutter
import UIKit

public class FlutterMetaAppadsSdkPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "flutter_meta_appads_sdk", binaryMessenger: registrar.messenger())
        let instance = FlutterMetaAppadsSdkPlugin()

        registrar.addMethodCallDelegate(instance, channel: channel)
        registrar.addApplicationDelegate(instance)
    }

    private var startUpApplication: UIApplication?
    private var startUpURL: URL?
    private var startUpOptions: [UIApplication.OpenURLOptionsKey: Any]?
    private var loggingEnabled: Bool = false

    public func application(
        _ application: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        startUpApplication = application
        startUpURL = url
        startUpOptions = options

        return false
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "initSdk":
            if let args = call.arguments as? [String: Any],
               let enableLogging = args["enableLogging"] as? Bool {
                loggingEnabled = enableLogging
            }

            initSdk()
            result(nil)
        case "logEvents":
            if let data = call.arguments as? FlutterStandardTypedData,
               let request = try? FBLogEventMessageRequest(serializedBytes: data.data) {
                logEvent(request.eventName, parameters: request.eventParameter)
            }
            result(nil)
        case "logPurchase":
            if let data = call.arguments as? FlutterStandardTypedData,
               let request = try? FBLogPurchaseMessageRequest(serializedBytes: data.data) {
                logPurchase(request.amount, currency: request.currency, parameters: request.eventParameter)
            }
            result(nil)
        case "logStandardEvent":
            if let data = call.arguments as? FlutterStandardTypedData,
               let request = try? FBLogStandardEventMessageRequest(serializedBytes: data.data) {
                logEvent(request.eventName, parameters: request.eventParameter)
            }
            result(nil)
        case "setUserData":
            if let data = call.arguments as? FlutterStandardTypedData,
               let request = try? FBSetUserDataRequest(serializedBytes: data.data) {
                setUserData(request.value, forType: request.type)
            }
            result(nil)
        case "getFbAnonId":
            let response = FBAnonIdResponse.with({
                $0.fbAnonID = AppEvents.shared.anonymousID
            })
            let data = try? response.serializedData()

            result(data)
        case "setAdvertiserTrackingEnabled":
            if let args = call.arguments as? [String: Any],
               let isEnabled = args["isEnabled"] as? Bool {
                Settings.shared.isAdvertiserTrackingEnabled = isEnabled

                if loggingEnabled {
                    print("FBSDKLog: TRACKING ENABLED \(Settings.shared.isAdvertiserTrackingEnabled)")
                }
            }

            result(nil)
        case "setAdvertiserIDCollectionEnabled":
            if let args = call.arguments as? [String: Any],
               let isEnabled = args["isEnabled"] as? Bool {
                Settings.shared.isAdvertiserIDCollectionEnabled = isEnabled

                if loggingEnabled {
                    print("FBSDKLog: IDFA COLLECTION \(Settings.shared.isAdvertiserTrackingEnabled)")
                }
            }

            result(nil)
        case "setDataProcessingOptions":
            if let data = call.arguments as? FlutterStandardTypedData,
               let request = try? FBSetDataProcessingOptionsRequest(serializedBytes: data.data) {
                if request.optionalState != nil && request.optionalCountry != nil {
                    Settings.shared.setDataProcessingOptions(request.modes, country: request.country, state: request.state)
                } else {
                    Settings.shared.setDataProcessingOptions(request.modes)
                }
            }
            result(nil)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    private func initSdk() {
        if loggingEnabled {
            Settings.shared.enableLoggingBehavior(.appEvents)
            Settings.shared.enableLoggingBehavior(.informational)
        }

        if let application = startUpApplication,
           let url = startUpURL,
           let options = startUpOptions {
            ApplicationDelegate.shared.application(
                application,
                open: url,
                sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
                annotation: options[UIApplication.OpenURLOptionsKey.annotation]
            )
        } else {
            ApplicationDelegate.shared.initializeSDK()
        }

        if loggingEnabled {
            print("FBSDKLog: SDK Version: \(Settings.shared.sdkVersion)")
            print("FBSDKLog: AnonymousID: \(AppEvents.shared.anonymousID)")
            print("FBSDKLog: IDFA COLLECTION \(Settings.shared.isAdvertiserIDCollectionEnabled)")
            print("FBSDKLog: TRACKING ENABLED \(Settings.shared.isAdvertiserTrackingEnabled)")
        }
    }

    private func logEvent(_ eventName: String, parameters: [String: String]) {
        AppEvents.shared.logEvent(
            AppEvents.Name(eventName),
            parameters: convertCustomParametersToFbParameters(parameters)
        )
    }

    private func logEvent(_ eventName: FBStandardEvents, parameters: [FBDefaultParameter]) {
        if let appEventName = protoEnumToEventName(eventName) {
            AppEvents.shared.logEvent(
                appEventName,
                parameters: convertStandardParametersToFbParameters(parameters)
            )
        }
    }

    private func logPurchase(_ amount: Double, currency: String, parameters: [String: String]) {
        AppEvents.shared.logPurchase(
            amount: amount,
            currency: currency,
            parameters: convertCustomParametersToFbParameters(parameters)
        )
    }

    private func setUserData(_ data: String?, forType: FBUserDataType) {
        if let forType = protoEnumToFBSDKAppEventUserDataType(forType) {
            AppEvents.shared.setUserData(data, forType: forType)

            print("FBSDKLog: TRACKING ENABLED \(Settings.shared.isAdvertiserTrackingEnabled)")
        }
    }
}

extension FlutterMetaAppadsSdkPlugin {
    fileprivate func convertCustomParametersToFbParameters(_ parameters: [String: String]) -> [AppEvents.ParameterName: String] {
        var fbParameters: [AppEvents.ParameterName: String] = [:]

        for parameter in parameters {
            fbParameters[AppEvents.ParameterName(rawValue: parameter.key)] = parameter.value
        }

        return fbParameters
    }

    fileprivate func convertStandardParametersToFbParameters(_ parameters: [FBDefaultParameter]) -> [AppEvents.ParameterName: String] {
        var fbParameters: [AppEvents.ParameterName: String] = [:]

        for parameter in parameters {
            if let parameterName = protoEnumToEventParameter(parameter.parameterName) {
                fbParameters[parameterName] = parameter.value
            }
        }

        return fbParameters
    }
}

// MARK: - Convert enums to SDK Values

extension FlutterMetaAppadsSdkPlugin {
    fileprivate func protoEnumToEventName(_ eventName: FBStandardEvents) -> AppEvents.Name? {
        switch eventName {
        case .achievedLevel:
            return AppEvents.Name.achievedLevel
        case .adClick:
            return AppEvents.Name.adClick
        case .adImpression:
            return AppEvents.Name.adImpression
        case .completedRegistration:
            return AppEvents.Name.completedRegistration
        case .completedTutorial:
            return AppEvents.Name.completedTutorial
        case .contact:
            return AppEvents.Name.contact
        case .customizeProduct:
            return AppEvents.Name.customizeProduct
        case .donate:
            return AppEvents.Name.donate
        case .findLocation:
            return AppEvents.Name.findLocation
        case .rated:
            return AppEvents.Name.rated
        case .schedule:
            return AppEvents.Name.schedule
        case .searched:
            return AppEvents.Name.searched
        case .startTrial:
            return AppEvents.Name.startTrial
        case .submitApplication:
            return AppEvents.Name.submitApplication
        case .subscribe:
            return AppEvents.Name.subscribe
        case .viewedContent:
            return AppEvents.Name.viewedContent
        case .addedPaymentInfo:
            return AppEvents.Name.addedPaymentInfo
        case .addedToCart:
            return AppEvents.Name.addedToCart
        case .addedToWishlist:
            return AppEvents.Name.addedToWishlist
        case .initiatedCheckout:
            return AppEvents.Name.initiatedCheckout
        case .purchased:
            return AppEvents.Name.purchased
        case .unlockedAchievement:
            return AppEvents.Name.unlockedAchievement
        case .spentCredits:
            return AppEvents.Name.spentCredits
        case .UNRECOGNIZED:
            return nil
        }
    }

    fileprivate func protoEnumToEventParameter(_ eventParameter: FBStandardParameters) -> AppEvents.ParameterName? {
        switch eventParameter {
        case .parameterNameContent:
            return .content
        case .parameterNameContentID:
            return .contentID
        case .parameterNameContentType:
            return .contentType
        case .parameterNameCurrency:
            return .currency
        case .parameterNameDescription:
            return .description
        case .parameterNameLevel:
            return .level
        case .parameterNameMaxRatingValue:
            return .maxRatingValue
        case .parameterNameNumItems:
            return .numItems
        case .parameterNamePaymentInfoAvailable:
            return .paymentInfoAvailable
        case .parameterNameRegistrationMethod:
            return .registrationMethod
        case .parameterNameSearchString:
            return .searchString
        case .parameterNameSuccess:
            return .success
        case .parameterNameAdType:
            return .adType
        case .parameterNameOrderID:
            return .orderID
        case .parameterNameEventName:
            return .eventName
        case .parameterNameLogTime:
            return .logTime
        case .UNRECOGNIZED:
            return nil
        }
    }

    fileprivate func protoEnumToFBSDKAppEventUserDataType(_ type: FBUserDataType) -> FBSDKAppEventUserDataType? {
        switch type {
        case .email:
            return .email
        case .firstName:
            return .firstName
        case .lastName:
            return .lastName
        case .phone:
            return .phone
        case .dateOfBirth:
            return .dateOfBirth
        case .gender:
            return .gender
        case .city:
            return .city
        case .state:
            return .state
        case .zip:
            return .zip
        case .country:
            return .country
        case .externalID:
            return .externalId
        case .UNRECOGNIZED:
            return nil
        }
    }
}
