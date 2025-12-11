class User {
  final String phone;
  final String password;
  final String? email;

  const User({
    required this.phone,
    required this.password,
    this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'phone': String phone,
      'password': String password,
      } =>
          User(
            phone: phone,
            password: password,
            email: json['email'] as String?,
          ),
      _ => throw const FormatException('Failed to load user.'),
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'password': password,
      if (email != null) 'email': email,
    };
  }
}
