// To parse this JSON data, do
//
//     final ingredientes = ingredientesFromMap(jsonString);

//import 'dart:convert';

//Ingredientes ingredientesFromMap(String str) => Ingredientes.fromMap(json.decode(str));

//String ingredientesToMap(Ingredientes data) => json.encode(data.toMap());

class Ingredientes {
    final int id;
    final String ingrediente;

    Ingredientes({
        required this.id,
        required this.ingrediente,
    });

    Ingredientes copyWith({
        int? id,
        String? ingrediente,
    }) => 
        Ingredientes(
            id: id ?? this.id,
            ingrediente: ingrediente ?? this.ingrediente,
        );

    factory Ingredientes.fromMap(Map<String, dynamic> json) => Ingredientes(
        id: json["id"],
        ingrediente: json["ingrediente"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "ingrediente": ingrediente,
    };
}