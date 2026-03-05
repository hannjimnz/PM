import 'package:app_alimentos/models/alimento.dart';
import 'package:flutter_riverpod/legacy.dart';

class NotificadorAlimentosFavoritos extends StateNotifier<List<Alimento>>{
  NotificadorAlimentosFavoritos() : super([]);

  bool toggleEstatusAlimentosFavoritos(Alimento alimento){
    final alimentoEsFavorito = state.contains(alimento);

    if(alimentoEsFavorito){
      state = state.where((a) => a.id != alimento.id).toList();
      return false;
    }else{
      state = [...state, alimento];
      return true;
    }
  }
}

final proveedorAlimentosFavoritos = StateNotifierProvider<NotificadorAlimentosFavoritos, List<Alimento>>((ref){
  return NotificadorAlimentosFavoritos();
});