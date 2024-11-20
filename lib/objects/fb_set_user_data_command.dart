/// An enum representing user data types that can be set for the Meta App Ads SDK.
enum FBUserDataType {
  email,
  firstName,
  lastName,
  phone,
  dateOfBirth,
  gender,
  city,
  state,
  zip,
  country,
  externalId,
}

/// A class representing a command to set user data for the Meta App Ads SDK.
///
/// This class allows you to provide specific user data points like email, name,
/// location etc. to the SDK for better ad targeting and personalization.
///
/// **Properties:**
///
/// * `type`: An `FBUserDataType` enum value specifying the type of user data to be set.
/// * `value`: A string containing the actual value of the user data.
class FBSetUserDataCommand {
  final FBUserDataType type;
  final String value;

  FBSetUserDataCommand({
    required this.type,
    required this.value,
  });
}
