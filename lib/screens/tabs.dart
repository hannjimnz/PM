import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_alimentos/screens/categorias.dart';
import 'package:app_alimentos/screens/filtros.dart';
import 'package:app_alimentos/screens/alimentos.dart';
import 'package:app_alimentos/providers/alimentos_provider.dart';
import 'package:app_alimentos/providers/favoritos_provider.dart';
import 'package:app_alimentos/providers/filtros_provider.dart';
import 'package:app_alimentos/widgets/cajon_principal.dart';

const kFiltrosIniciales = {
  Filtro.libreGluten: false,
  Filtro.libreLactosa: false,
  Filtro.vegetariana: false,
  Filtro.vegana: false,
};

class PantallaTabs extends ConsumerStatefulWidget {
  const PantallaTabs ({super.key});

  @override
  ConsumerState<PantallaTabs> createState() {
    return _PantallaTabsState();
  }
}