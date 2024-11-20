/// A class representing a command to configure data processing options for the Meta App Ads SDK.
///
/// This class allows you to specify how user data is processed by the SDK, including
/// enabling or disabling Limited Data Use (LDU) and potentially providing location information.
///
/// Please refer to meta documentation (https://developers.facebook.com/docs/app-events/guides/data-processing-options)
///
/// **Properties:**
///
/// * `modes`: A list of strings representing the desired data processing modes.
/// * `country`: An optional integer representing the user's country code (ISO 3166-1 alpha-2 format).
/// * `state`: An optional integer representing the user's state code (relevant for specific countries).
class FBSetDataProcessingOptionsCommand {
  final List<String> modes;
  final int? country;
  final int? state;

  FBSetDataProcessingOptionsCommand({
    required this.modes,
    this.country,
    this.state,
  });
}
