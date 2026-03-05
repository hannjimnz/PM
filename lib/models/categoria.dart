import 'package:flutter/material.dart';

class Categoria {
  const Categoria ({
    required this.id,
    required this.titulo,
    this.color = Colors.orange,
  });

  final String id;
  final String titulo;
  final Color color;

}