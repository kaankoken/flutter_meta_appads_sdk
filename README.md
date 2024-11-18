# flutter_meta_appads_sdk

This Flutter plugin provides a simple interface to interact with the Meta SDK. It allows you to initialize the SDK, set user data, log standard events, log purchases, and log custom events.

### Disclaimer

I'm not sure setUserData is working properly in android since i'm not using it in Android Apps, it works different from iOS apps, so be sure to pass all the data everytime the apps starts.

### Installation
You must first create an app at Facebook developers: https://developers.facebook.com/

Get your app id and client token, follow oficial steps for [iOS integration](https://developers.facebook.com/docs/app-events/getting-started-app-events-ios) and [Android Integration](https://developers.facebook.com/docs/app-events/getting-started-app-events-android#7--add-app-events)

### Key features

* Initialization: `initSdk()` sets up the SDK.
* User Data: `setUserData(FBSetUserDataCommand)` provides user information for targeted ads.
* Event Tracking:
  * `logStandardEvent(FBLogStandardEventCommand)`: Tracks standard events (e.g., level up).
  * `logPurchase(FBLogPurchaseCommand)`: Records purchase events.
  * `logEvents(FBLogEventCommand)`: Logs custom events.
* Anonymous ID: `getFbAnonId()` retrieves the Facebook Anonymous ID.

### About Meta SDK

Follow the official Meta SDK guide for correct integration:

[Meta App Ads URL](https://developers.facebook.com/docs/app-ads/)

