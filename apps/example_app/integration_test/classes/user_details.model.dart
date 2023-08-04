class UserDetails {
  String email;
  String password;

  UserDetails(this.email, this.password);

  // Returning UserDetailsObject from Input Fields
  factory UserDetails.build(String email, String password) {
    return UserDetails(email, password);
  }

  // Returning UserDetailsObject by taking data from json objects
  factory UserDetails.fromJson(Map<String, dynamic> jsonData) {
    return UserDetails(jsonData['email'], jsonData['password']);
  }
}
