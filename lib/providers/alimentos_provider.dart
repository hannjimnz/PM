import 'package:app_alimentos/data/datos_ficticios.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final alimentosProvider = Provider((ref){
  return alimentosMuestra;
});

