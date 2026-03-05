import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_alimentos/models/alimento.dart';
import 'package:app_alimentos/providers/favoritos_provider.dart';

class PantallaDetallesAlimento extends ConsumerWidget{
  const PantallaDetallesAlimento({
    super.key,
    required this.alimento,
  });

  final Alimento alimento;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(alimento.titulo),
        actions: [
          IconButton(onPressed: () {
            final fueAgregada = ref.read(proveedorAlimentosFavoritos.notifier).toggleEstatusAlimentosFavoritos(alimento);
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(
                fueAgregada
                ? 'Alimento agregado a favoritos.'
                : 'Alimento eliminado.'
              ),)
              );
          }, icon: Icon(Icons.star),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.network(alimento.imagenUrl,
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          
          const SizedBox(height: 14,),
          Text(
            'Ingredientes', 
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),

          for(final ingrediente in alimento.ingredientes)
          Text(ingrediente,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),),
          const SizedBox(
            height: 14,
          ),

          Text(
            'Pasos', 
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),

          for(final paso in alimento.pasos)
          Padding(padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: Text(paso,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),),
          ),
        ],),
      ),
    );
  }
}
