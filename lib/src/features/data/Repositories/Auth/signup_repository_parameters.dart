class SignUpRepositoryParameters {
  final String email;
  final String password;

  SignUpRepositoryParameters({required this.email, required this.password});

  //Metodo para convertir a un mapa el objeto

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }
}
