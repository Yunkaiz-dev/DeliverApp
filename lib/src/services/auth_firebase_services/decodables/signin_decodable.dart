class SignInDecodable {
  String idToken;
  String email;
  String refreshToken;
  String expiresIn;
  String localId;
  bool registered;

  SignInDecodable({
    required this.idToken,
    required this.email,
    required this.refreshToken,
    required this.expiresIn,
    required this.localId,
    required this.registered,
  });

  factory SignInDecodable.fromJson(Map<String, dynamic> json) =>
      SignInDecodable(
        idToken: json["idToken"],
        email: json["email"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
        localId: json["localId"],
        registered: json["registered"],
      );

  Map<String, dynamic> toJson() => {
        "idToken": idToken,
        "email": email,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
        "localId": localId,
        "registered": registered,
      };
}
