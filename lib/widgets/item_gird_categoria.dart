import 'package:flutter/material.dart';
import 'package:app_alimentos/models/categoria.dart';

class ItemGridCategoria extends StatelessWidget{
  const ItemGridCategoria ({
    super.key,
    required this.categoria,
    required this.onSeleccionarCategoria,
  });

  final Categoria categoria;
  final void Function() onSeleccionarCategoria;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSeleccionarCategoria,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [
            categoria.color.withValues(),
            categoria.color.withValues()
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,)
        ),
        child: Text(
          categoria.titulo,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            
          ),
        ),
      ),
    );
  }
}