// To parse this JSON data, do
//
//     final recetas = recetasFromMap(jsonString);

//import 'dart:convert';

//Recetas recetasFromMap(String str) => Recetas.fromMap(json.decode(str));

//String recetasToMap(Recetas data) => json.encode(data.toMap());

class Recetas {
    final int id;
    final String titulo;
    final String instrucciones;
    final String tiempoCoccion;
    final String porciones;
    final int favorito;
    final String fecha;
    final int idUsuario;
    final int idCategoria;
    final int idTipoComida;

    Recetas({
        required this.id,
        required this.titulo,
        required this.instrucciones,
        required this.tiempoCoccion,
        required this.porciones,
        required this.favorito,
        required this.fecha,
        required this.idUsuario,
        required this.idCategoria,
        required this.idTipoComida,
    });

    Recetas copyWith({
        int? id,
        String? titulo,
        String? instrucciones,
        String? tiempoCoccion,
        String? porciones,
        int? favorito,
        String? fecha,
        int? idUsuario,
        int? idCategoria,
        int? idTipoComida,
    }) => 
        Recetas(
            id: id ?? this.id,
            titulo: titulo ?? this.titulo,
            instrucciones: instrucciones ?? this.instrucciones,
            tiempoCoccion: tiempoCoccion ?? this.tiempoCoccion,
            porciones: porciones ?? this.porciones,
            favorito: favorito ?? this.favorito,
            fecha: fecha ?? this.fecha,
            idUsuario: idUsuario ?? this.idUsuario,
            idCategoria: idCategoria ?? this.idCategoria,
            idTipoComida: idTipoComida ?? this.idTipoComida,
        );

    factory Recetas.fromMap(Map<String, dynamic> json) => Recetas(
        id: json["id"],
        titulo: json["titulo"],
        instrucciones: json["instrucciones"],
        tiempoCoccion: json["tiempoCoccion"],
        porciones: json["porciones"],
        favorito: json["favorito"],
        fecha: json["fecha"],
        idUsuario: json["idUsuario"],
        idCategoria: json["idCategoria"],
        idTipoComida: json["idTipoComida"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "titulo": titulo,
        "instrucciones": instrucciones,
        "tiempoCoccion": tiempoCoccion,
        "porciones": porciones,
        "favorito": favorito,
        "fecha": fecha,
        "idUsuario": idUsuario,
        "idCategoria": idCategoria,
        "idTipoComida": idTipoComida,
    };
}