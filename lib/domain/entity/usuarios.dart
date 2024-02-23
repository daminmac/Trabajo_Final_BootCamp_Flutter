// To parse this JSON data, do
//
//     final usuarios = usuariosFromMap(jsonString);
//import 'dart:convert';

//Usuarios usuariosFromMap(String str) => Usuarios.fromMap(json.decode(str));

//String usuariosToMap(Usuarios data) => json.encode(data.toMap());

class Usuarios {
    final int id;
    final String nombre;
    final String email;
    final String password;
    final String token;

    Usuarios({
        required this.id,
        required this.nombre,
        required this.email,
        required this.password,
        required this.token,
    });

    Usuarios copyWith({
        int? id,
        String? nombre,
        String? email,
        String? password,
        String? token,
    }) => 
        Usuarios(
            id: id ?? this.id,
            nombre: nombre ?? this.nombre,
            email: email ?? this.email,
            password: password ?? this.password,
            token: token ?? this.token,
        );

    factory Usuarios.fromMap(Map<String, dynamic> json) => Usuarios(
        id: json["id"],
        nombre: json["nombre"],
        email: json["email"],
        password: json["password"],
        token: json["token"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "nombre": nombre,
        "email": email,
        "password": password,
        "token": token,
    };
}