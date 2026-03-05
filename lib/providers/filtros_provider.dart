import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

enum Filtro{
  libreGluten, 
  libreLactosa,
  vegetariana,
  vegana,
}

class FiltrosNotifier extends StateNotifier<Map<Filtro, bool>> {
  FiltrosNotifier() : super({
    Filtro.libreGluten: false,
    Filtro.libreLactosa: false,
    Filtro.vegetariana: false,
    Filtro.vegana: false,
  });

  void setFiltros(Map<Filtro, bool> filtrosElegidos){
    state = filtrosElegidos;
  }

  void setfiltro(Filtro filtro, bool estaActivo) {
    state = {
      ...state, filtro: estaActivo,
    };
  }
}

final filtrosProvider = StateNotifierProvider<FiltrosNotifier, Map<Filtro, bool>>(
  (ref) => FiltrosNotifier());