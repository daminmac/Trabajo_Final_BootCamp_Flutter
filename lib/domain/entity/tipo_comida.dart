// To parse this JSON data, do
//
//     final tipoComida = tipoComidaFromMap(jsonString);

//import 'dart:convert';

//TipoComida tipoComidaFromMap(String str) => TipoComida.fromMap(json.decode(str));

//String tipoComidaToMap(TipoComida data) => json.encode(data.toMap());

class TipoComida {
    final int id;
    final String tipoComida;

    TipoComida({
        required this.id,
        required this.tipoComida,
    });

    TipoComida copyWith({
        int? id,
        String? tipoComida,
    }) => 
        TipoComida(
            id: id ?? this.id,
            tipoComida: tipoComida ?? this.tipoComida,
        );

    factory TipoComida.fromMap(Map<String, dynamic> json) => TipoComida(
        id: json["id"],
        tipoComida: json["tipoComida"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "tipoComida": tipoComida,
    };
}