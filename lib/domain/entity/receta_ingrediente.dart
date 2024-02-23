// To parse this JSON data, do
//
//     final recetaIngrediente = recetaIngredienteFromMap(jsonString);

//import 'dart:convert';

//RecetaIngrediente recetaIngredienteFromMap(String str) => RecetaIngrediente.fromMap(json.decode(str));

//String recetaIngredienteToMap(RecetaIngrediente data) => json.encode(data.toMap());

class RecetaIngrediente {
    final int id;
    final int idReceta;
    final int idIngrediente;
    final int cantidad;
    final String unidad;

    RecetaIngrediente({
        required this.id,
        required this.idReceta,
        required this.idIngrediente,
        required this.cantidad,
        required this.unidad,
    });

    RecetaIngrediente copyWith({
        int? id,
        int? idReceta,
        int? idIngrediente,
        int? cantidad,
        String? unidad,
    }) => 
        RecetaIngrediente(
            id: id ?? this.id,
            idReceta: idReceta ?? this.idReceta,
            idIngrediente: idIngrediente ?? this.idIngrediente,
            cantidad: cantidad ?? this.cantidad,
            unidad: unidad ?? this.unidad,
        );

    factory RecetaIngrediente.fromMap(Map<String, dynamic> json) => RecetaIngrediente(
        id: json["id"],
        idReceta: json["idReceta"],
        idIngrediente: json["idIngrediente"],
        cantidad: json["cantidad"],
        unidad: json["unidad"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "idReceta": idReceta,
        "idIngrediente": idIngrediente,
        "cantidad": cantidad,
        "unidad": unidad,
    };
}