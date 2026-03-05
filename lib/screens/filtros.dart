import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_alimentos/providers/filtros_provider.dart';

class PantallaFiltros extends ConsumerStatefulWidget{
  const PantallaFiltros ({
    super.key,
  });

  @override
  ConsumerState<PantallaFiltros> createState() {
    return _PantallaFiltrosState();
  }
}

class _PantallaFiltrosState extends ConsumerState<PantallaFiltros>{
  var _libreGlutenSet = false;
  var _libreLactosaSet = false;
  var _filtroVegetarianoSet = false;
  var _filtroVeganaSet = false;

  @override
  void initState() {

    super.initState();

    final filtrosActivos = ref.read(filtrosProvider);
    _libreGlutenSet = filtrosActivos[Filtro.libreGluten]!;
    _libreLactosaSet = filtrosActivos[Filtro.libreLactosa]!;
    _filtroVegetarianoSet = filtrosActivos[Filtro.vegetariana]!;
    _filtroVeganaSet = filtrosActivos [Filtro.vegana]! ;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('sus filtros'),
      ),

      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, dynamic result){
          if(didPop) return;
          Navigator.of(context).pop({
            Filtro.libreGluten: _libreGlutenSet,
            Filtro.libreLactosa: _libreLactosaSet,
            Filtro.vegetariana: _filtroVegetarianoSet,
            Filtro.vegana: _filtroVeganaSet,
          });
        },

        child: Column(
          children: [
            SwitchListTile(value: _libreGlutenSet, onChanged: (isChecked){
              setState(() {
                _libreGlutenSet = isChecked;
              });
            },
            title: Text('Libre de gluten',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),),
            
            subtitle: Text('solamente incluye alimentos libres de gluten',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            )),

            activeThumbColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),

            SwitchListTile(value: _libreLactosaSet, onChanged: (isChecked){
              setState(() {
                _libreLactosaSet = isChecked;
              });
            },
            title: Text('Libre de lactosa',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),),

            subtitle: Text('solamente incluye alimentos libres de lactosa',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            )),

            activeThumbColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),

            SwitchListTile(value: _filtroVegetarianoSet, onChanged: (isChecked){
              setState(() {
                _filtroVegetarianoSet = isChecked;
              });
            },
            title: Text('vegetarianas',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
            ),
            subtitle: Text('solamente incluye alimentos vegetarianos',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            )),

            activeThumbColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),

            SwitchListTile(value: _filtroVeganaSet, onChanged: (isChecked){
              setState(() {
                _filtroVeganaSet = isChecked;
              });
            },
            title: Text('veganas',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),),

            subtitle: Text('solamente incluye alimentos veganos',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            )),

            activeThumbColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        )
      ),
    );
  }
}