import 'package:flutter/material.dart';
import 'package:app_alimentos/models/alimento.dart';
import 'package:app_alimentos/screens/detalles_alimento.dart';
import 'package:app_alimentos/widgets/item_alimento.dart';

class PantallaAlimentos extends StatelessWidget{
  const PantallaAlimentos({
    super.key,
    this.titulo,
    required this.alimentos,
  });

  final String? titulo;
  final List<Alimento> alimentos;

  void elegirAlimento(BuildContext context, Alimento alimento){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => PantallaDetallesAlimento(
        alimento: alimento,
      ))
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center (
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('no jais nada',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),),
          const SizedBox(height: 16,),
          Text('intente seleccionar otra categria',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),),
        ],
      ),
    );

    if(alimentos.isNotEmpty){
      content = ListView.builder(
        itemCount: alimentos.length,
        itemBuilder: (ctx, index) => ItemAlimento(
          alimento: alimentos[index],
          onElegirAlimento: (ctx, alimento){
            elegirAlimento(ctx, alimento);
          }
        ),
      );
    }

    if(titulo == null){
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(titulo!),
      ),
      body: content,
    );
  }
}