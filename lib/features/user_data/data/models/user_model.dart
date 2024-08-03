class UserModel {
  final String firstName, lastName, username, gender, userID;

  UserModel(
      {required this.firstName,
      required this.lastName,
      required this.username,
      required this.gender,
      required this.userID});

  factory UserModel.fromJson(jsonData) {
    return UserModel(
        firstName: jsonData['firstName'],
        lastName: jsonData['lastName'],
        username: jsonData['username'],
        gender: jsonData['gender'],
        userID: jsonData['userID']);
  }

  tojson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'gender': gender,
      'userID': userID
    };
  }
}
