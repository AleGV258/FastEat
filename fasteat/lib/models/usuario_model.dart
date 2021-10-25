import 'dart:convert';
import 'package:flutter/material.dart';

class Usuario {
  Usuario({
    this.id,
    required this.usuario,
    required this.correo,
    required this.contrasena,
    required this.numeroTel,
  });

  int? id;
  String usuario;
  String correo;
  String contrasena;
  int numeroTel;

  factory Usuario.fromMap(Map<String, dynamic> json) => new Usuario(
    id: json['id'],
    usuario: json['usuario'],
    correo: json['correo'],
    contrasena: json['contrasena'],
    numeroTel: json['numeroTel'],
  );

  Map <String, dynamic> toMap(){
    return {
      'id': id,
      'usuario': usuario,
      'correo': correo,
      'contrasena': contrasena,
      'numeroTel': numeroTel,
    };
  }
}