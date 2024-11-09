
class SignUpDecodable {
    String idToken;
    String email;
    String refreshToken;
    String expiresIn;
    String localId;

    SignUpDecodable({
        required this.idToken,
        required this.email,
        required this.refreshToken,
        required this.expiresIn,
        required this.localId,
    });

    factory SignUpDecodable.fromJson(Map<String, dynamic> json) => SignUpDecodable(
        idToken: json["idToken"],
        email: json["email"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
        localId: json["localId"],
    );

    Map<String, dynamic> toJson() => {
        "idToken": idToken,
        "email": email,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
        "localId": localId,
    };
}