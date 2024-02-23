// To parse this JSON data, do
//
//     final categorias = categoriasFromMap(jsonString);

//import 'dart:convert';

//Categorias categoriasFromMap(String str) => Categorias.fromMap(json.decode(str));

//String categoriasToMap(Categorias data) => json.encode(data.toMap());

class Categorias {
    final int id;
    final String categoria;

    Categorias({
        required this.id,
        required this.categoria,
    });

    Categorias copyWith({
        int? id,
        String? categoria,
    }) => 
        Categorias(
            id: id ?? this.id,
            categoria: categoria ?? this.categoria,
        );

    factory Categorias.fromMap(Map<String, dynamic> json) => Categorias(
        id: json["id"],
        categoria: json["categoria"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "categoria": categoria,
    };
}