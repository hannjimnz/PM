import 'package:flutter/material.dart';
import 'package:app_alimentos/models/alimento.dart';
import 'package:app_alimentos/models/categoria.dart';
import 'package:app_alimentos/widgets/item_gird_categoria.dart';
import 'package:app_alimentos/data/datos_ficticios.dart';
import 'package:app_alimentos/screens/alimentos.dart';

class PantallaCategorias extends StatelessWidget{
  const PantallaCategorias({
    super.key,
    required this.alimentosDisponibles,
  });

  final List<Alimento> alimentosDisponibles;

  void _seleccionarCategoria(BuildContext context, Categoria categoria){
    final alimentosFiltrados = alimentosDisponibles
        .where((alimento) => alimento.categorias.contains(categoria.id))
        .toList();

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => PantallaAlimentos(
              titulo: categoria.titulo,
              alimentos : alimentosFiltrados
            ))
        );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(24),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        ),
        children: [
          for (final Categoria in categoriasDisponibles)
          ItemGridCategoria(
            categoria : Categoria,
            onSeleccionarCategoria: (){
              _seleccionarCategoria(context, Categoria);
            }
          ),
        ],
    );
  }
}
