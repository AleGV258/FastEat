import 'dart:convert';
import 'package:flutter/material.dart';

class Favorito {
  Favorito({
    required this.idFavorito,
    required this.platillo,
    required this.restaurante,
  });

  int idFavorito;
  String platillo;
  String restaurante;

  factory Favorito.fromMap(Map<String, dynamic> json) => new Favorito(
    idFavorito: json['idFavorito'],
    platillo: json['platillo'],
    restaurante: json['restaurante'],
  );

  Map <String, dynamic> toMap(){
    return {
      'idFavorito': idFavorito,
      'platillo': platillo,
      'restaurante': restaurante,
    };
  }
}