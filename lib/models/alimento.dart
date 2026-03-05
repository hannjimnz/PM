//import 'package:flutter/material.dart';

//import 'package:app_alimentos/models/categoria.dart';

enum Complejidad{
  simple, 
  desafiante,
  dificil,
}

enum Costeabilidad{
  costeable, 
  costosa,
  lujosa
}

class Alimento {
  const Alimento (
    {
      required this.id,
      required this.categorias,
      required this.titulo,
      required this.imagenUrl,
      required this.ingredientes,
      required this.pasos,
      required this.duracion,
      required this.complejidad,
      required this.costeabilidad,
      required this.esLibreGluten,
      required this.esLibreLactosa,
      required this.esVegana,
      required this.esVegetariana,
    });

    final String id;
    final List<String> categorias;
    final String titulo;
    final String imagenUrl;
    final List<String> ingredientes;
    final List<String> pasos;
    final int duracion;
    final Complejidad complejidad;
    final Costeabilidad costeabilidad;
    final bool esLibreGluten;
    final bool esLibreLactosa;
    final bool esVegana;
    final bool esVegetariana; 
    
}