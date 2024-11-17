import '../proto/set_user_data_message.pb.dart' as Proto;

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

class FBSetUserDataCommand {
  final FBUserDataType type;
  final String value;

  FBSetUserDataCommand({
    required this.type,
    required this.value,
  });

  Proto.FBSetUserDataRequest toProtoRequest() {
    return Proto.FBSetUserDataRequest(
      type: _convertEnum(),
      value: value,
    );
  }

  Proto.FBUserDataType _convertEnum() {
    switch (type) {
      case FBUserDataType.email:
        return Proto.FBUserDataType.Email;
      case FBUserDataType.firstName:
        return Proto.FBUserDataType.FirstName;
      case FBUserDataType.lastName:
        return Proto.FBUserDataType.LastName;
      case FBUserDataType.phone:
        return Proto.FBUserDataType.Phone;
      case FBUserDataType.dateOfBirth:
        return Proto.FBUserDataType.DateOfBirth;
      case FBUserDataType.gender:
        return Proto.FBUserDataType.Gender;
      case FBUserDataType.city:
        return Proto.FBUserDataType.City;
      case FBUserDataType.state:
        return Proto.FBUserDataType.State;
      case FBUserDataType.zip:
        return Proto.FBUserDataType.Zip;
      case FBUserDataType.country:
        return Proto.FBUserDataType.Country;
      case FBUserDataType.externalId:
        return Proto.FBUserDataType.ExternalId;
    }
  }
}
