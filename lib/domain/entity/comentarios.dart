// To parse this JSON data, do
//
//     final comentarios = comentariosFromMap(jsonString);

//import 'dart:convert';

//Comentarios comentariosFromMap(String str) => Comentarios.fromMap(json.decode(str));

//String comentariosToMap(Comentarios data) => json.encode(data.toMap());

class Comentarios {
    final int id;
    final int idReceta;
    final String comentario;

    Comentarios({
        required this.id,
        required this.idReceta,
        required this.comentario,
    });

    Comentarios copyWith({
        int? id,
        int? idReceta,
        String? comentario,
    }) => 
        Comentarios(
            id: id ?? this.id,
            idReceta: idReceta ?? this.idReceta,
            comentario: comentario ?? this.comentario,
        );

    factory Comentarios.fromMap(Map<String, dynamic> json) => Comentarios(
        id: json["id"],
        idReceta: json["idReceta"],
        comentario: json["comentario"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "idReceta": idReceta,
        "comentario": comentario,
    };
}