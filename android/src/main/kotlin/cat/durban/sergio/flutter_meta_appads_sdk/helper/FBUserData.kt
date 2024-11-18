import cat.durban.sergio.flutter_meta_appads_sdk.proto.SetUserDataMessage

object FBUserData {
    var email: String? = null
    var firstName: String? = null
    var lastName: String? = null
    var phone: String? = null
    var birthDate: String? = null
    var gender: String? = null
    var city: String? = null
    var state: String? = null
    var zipCode: String? = null
    var country: String? = null

    fun populateFromProto(key: SetUserDataMessage.FBUserDataType, value: String) {
        when (key) {
            SetUserDataMessage.FBUserDataType.Email -> email = value
            SetUserDataMessage.FBUserDataType.FirstName -> firstName = value
            SetUserDataMessage.FBUserDataType.LastName -> lastName = value
            SetUserDataMessage.FBUserDataType.Phone -> phone = value
            SetUserDataMessage.FBUserDataType.DateOfBirth -> birthDate = value
            SetUserDataMessage.FBUserDataType.Gender -> gender = value
            SetUserDataMessage.FBUserDataType.City -> city = value
            SetUserDataMessage.FBUserDataType.State -> state = value
            SetUserDataMessage.FBUserDataType.Zip -> zipCode = value
            SetUserDataMessage.FBUserDataType.Country -> country = value
            SetUserDataMessage.FBUserDataType.ExternalId -> {}
            SetUserDataMessage.FBUserDataType.UNRECOGNIZED -> {}
        }
    }
}
