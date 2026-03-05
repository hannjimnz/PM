import 'package:flutter/material.dart';
import 'package:app_alimentos/models/alimento.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:app_alimentos/widgets/rasgo_item_alimento.dart';


class ItemAlimento extends StatelessWidget{
  const ItemAlimento({
    super.key,
    required this.alimento,
    required this.onElegirAlimento,
  });

  final Alimento alimento;
  final void Function( 
    BuildContext context,
    Alimento alimento,
  ) onElegirAlimento;

  String get textoComplejidad{
    return alimento.complejidad.name[0].toLowerCase()+alimento.complejidad.name.substring(1);
  }

  String get textoCosteabilidad{
    return alimento.costeabilidad.name[0].toLowerCase()+alimento.costeabilidad.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card( 
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),

      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onElegirAlimento(context, alimento);
        },
        child: Stack(
          children: [
            FadeInImage(placeholder: MemoryImage(kTransparentImage), image: NetworkImage(alimento.imagenUrl),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 44,
                ),
                child: Column(
                  children: [
                    Text(alimento.titulo, 
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),

                    const SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RasgoItemAlimento(
                          icono: Icons.schedule,
                          etiqueta: '${alimento.duracion} min',
                        ),
                        const SizedBox(width: 12,),
                        RasgoItemAlimento(
                          icono: Icons.work,
                          etiqueta: textoComplejidad,
                        ),

                        const SizedBox(width: 12,),
                        RasgoItemAlimento(
                          icono: Icons.attach_money,
                          etiqueta: textoCosteabilidad, 
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}