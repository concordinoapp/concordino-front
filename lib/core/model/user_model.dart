class User {
  String email;
  String username;
  String password;
  String token;

  User({
    required this.email,
    required this.username,
    required this.password,
    required this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      username: json['username'],
      password: json['password'],
      token: json['token'],
    );
  }
}
