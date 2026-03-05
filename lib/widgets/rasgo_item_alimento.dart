import 'package:flutter/material.dart';

class RasgoItemAlimento extends StatelessWidget{
  const RasgoItemAlimento({
    super.key,
    required this.icono,
    required this.etiqueta,
  });

  final IconData icono;
  final String etiqueta;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icono,
          size: 17,
          color: Colors.white,          
        ),
        
        const SizedBox(
          width: 6,
        ),
        Text(etiqueta, style: const TextStyle(
          color: Colors.white,
        ),)
      ],
    );
  }
}