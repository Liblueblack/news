class UserModel {
  final String username;
  final String email;
  final String? password;
  final String? cpassword;

  // # contractor
  UserModel({
    required this.username,
    required this.email,
    required this.password,
    required this.cpassword,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'],
      email: map['email'],
      password: map['password'],
      cpassword: map['cpassword'],
    );
  }
}
