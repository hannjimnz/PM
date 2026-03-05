import 'package:flutter/material.dart';
import 'package:app_alimentos/models/categoria.dart';
import 'package:app_alimentos/models/alimento.dart';

const categoriasDisponibles = [
  Categoria(
    id: 'c1',
    titulo: 'Italiana',
    color: Colors.purple,
  ),
  Categoria(
    id: 'c2',
    titulo: 'Rápido & Fácil',
    color: Colors.red,
  ),
  Categoria(
    id: 'c3',
    titulo: 'Hamburguesas',
    color: Colors.orange,
  ),
  Categoria(
    id: 'c4',
    titulo: 'Germana',
    color: Colors.amber,
  ),
  Categoria(
    id: 'c5',
    titulo: 'Light & Adorable',
    color: Colors.blue,
  ),
  Categoria(
    id: 'c6',
    titulo: 'Exótica',
    color: Colors.green,
  ),
  Categoria(
    id: 'c7',
    titulo: 'Desayuno',
    color: Colors.lightBlue,
  ),
  Categoria(
    id: 'c8',
    titulo: 'Asiatica',
    color: Colors.lightGreen,
  ),
  Categoria(
    id: 'c9',
    titulo: 'Francesa',
    color: Colors.pink,
  ),
  Categoria(
    id: 'c10',
    titulo: 'Verano',
    color: Colors.teal,
  ),
];

const alimentosMuestra = [
  Alimento(
    id: 'm1',
    categorias: [
      'c1',
      'c2',
    ],
    titulo: 'Spaghetti Salsa de Tomate',
    costeabilidad: Costeabilidad.costeable,
    complejidad: Complejidad.simple,
    imagenUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duracion: 20,
    ingredientes: [
      '4 Tomates',
      '1 Cuchara de aceite de oliva',
      '1 Cebolla',
      '250g Spaghetti',
      'Especias',
      'Queso (opcional)'
    ],
    pasos: [
      'Corta los tomates y la cebolla en trozos pequeños.',
      'Hierve agua y añade sal cuando hierva.',
      'Pon los espaguetis en el agua hirviendo; estarán listos en unos 10 o 12 minutos.',
      'Mientras tanto, calienta un poco de aceite de oliva y añade la cebolla cortada.',
      'Después de 2 minutos, añade los trozos de tomate, la sal, la pimienta y las demás especias.',
      'La salsa estará lista cuando los espaguetis estén listos.',
      'Puedes añadir un poco de queso por encima.'
    ],
    esLibreGluten: false,
    esVegana: true,
    esVegetariana: true,
    esLibreLactosa: true,
  ),
  Alimento(
    id: 'm2',
    categorias: [
      'c2',
    ],
    titulo: 'Tostado Hawaii',
    costeabilidad: Costeabilidad.costeable,
    complejidad: Complejidad.simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duracion: 10,
    ingredientes: [
      '1 rebanada de pan blanco',
      '1 rebanada de jamón',
      '1 rebanada de piña',
      '1 o 2 rebanadas de queso',
      'Mantequilla'
    ],
    pasos: [
      'Untar con mantequilla un lado del pan blanco.',
      ' Colocar una capa de jamón, piña y queso sobre el pan blanco.',
      ' Hornear las tostadas durante unos 10 minutos a 200 °C.'
    ],
    esLibreGluten: false,
    esVegana: false,
    esVegetariana: false,
    esLibreLactosa: false,
  ),
  Alimento(
    id: 'm3',
    categorias: [
      'c2',
      'c3',
    ],
    titulo: 'Hamburguesa Clásica',
    costeabilidad: Costeabilidad.costosa,
    complejidad: Complejidad.simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duracion: 45,
    ingredientes: [
      '300 g de carne de res',
      '1 tomate',
      '1 pepino',
      '1 cebolla',
      'Ketchup',
      '2 panes de hamburguesa'
    ],
    pasos: [
      'Formar 2 hamburguesas',
      'Freír las hamburguesas durante unos 4 minutos por cada lado,',
      'Freír rápidamente los panecillos durante unos 1 minuto por cada lado,',
      'Bruchar los panecillos con kétchup,',
      'Servir la hamburguesa con tomate, pepino y cebolla.'
    ],
    esLibreGluten: false,
    esVegana: false,
    esVegetariana: false,
    esLibreLactosa: true,
  ),
  Alimento(
    id: 'm4',
    categorias: [
      'c4',
    ],
    titulo: 'Escalope vienés',
    costeabilidad: Costeabilidad.lujosa,
    complejidad: Complejidad.desafiante,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duracion: 60,
    ingredientes: [
      '8 chuletas de ternera',
      '4 huevos',
      '200 g de pan rallado',
      '100 g de harina',
      '300 ml de mantequilla',
      '100 g de aceite vegetal',
      'Sal',
      'Rodajas de limón'
    ],
    pasos: [
      'Ablandar la ternera a unos 2-4 mm y salarla por ambos lados.',
      'En un plato llano, remover brevemente los huevos con un tenedor.',
      'Enharinar ligeramente las chuletas, rebozarlas en huevo y, por último, rebozarlas en pan rallado.',
      'Calentar la mantequilla y el aceite en una sartén grande (dejar que la grasa esté bien caliente) y freír los escalopes hasta que estén dorados por ambos lados.',
      'Asegúrese de remover la sartén con frecuencia para que los escalopes queden cubiertos de aceite y la masa quede esponjosa.',
      'Retirar y escurrir sobre papel de cocina. Freír el perejil en el aceite restante y escurrir.',
      'Colocar los escalopes en un plato caliente y servir adornados con perejil y rodajas de limón.'
    ],
    esLibreGluten: false,
    esVegana: false,
    esVegetariana: false,
    esLibreLactosa: false,
  ),
  Alimento(
    id: 'm5',
    categorias: [
      'c2'
          'c5',
      'c10',
    ],
    titulo: 'Ensalada con salmón ahumado',
    costeabilidad: Costeabilidad.lujosa,
    complejidad: Complejidad.simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duracion: 15,
    ingredientes: [
      'Rúcula',
      'Canónigos',
      'Perejil',
      'Hinojo',
      '200 g de salmón ahumado',
      'Mostaza',
      'Vinagre balsámico',
      'Aceite de oliva',
      'Sal y pimienta'
    ],
    pasos: [
      'Lavar y cortar la ensalada y las hierbas.',
      'Cortar el salmón en dados.',
      'Mezclar la mostaza, el vinagre y el aceite de oliva para preparar un postre.',
      'Preparar la ensalada.',
      'Añadir los dados de salmón y el aliño.'
    ],
    esLibreGluten: true,
    esVegana: false,
    esVegetariana: true,
    esLibreLactosa: true,
  ),
  Alimento(
    id: 'm6',
    categorias: [
      'c6',
      'c10',
    ],
    titulo: 'Deliciosa mousse de naranja',
    costeabilidad: Costeabilidad.costeable,
    complejidad: Complejidad.dificil,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duracion: 240,
    ingredientes: [
      '4 láminas de gelatina',
      '150 ml de zumo de naranja',
      '80 g de azúcar',
      '300 g de yogur',
      '200 g de nata',
      'piel de naranja'
    ],
    pasos: [
      'Disolver la gelatina en la olla.',
      'Agregar el jugo de naranja y el azúcar.',
      'Retirar la olla del fuego.',
      'Agregar 2 cucharadas de yogur.',
      'Remover la gelatina con el yogur restante.',
      'Dejar enfriar todo en el refrigerador.',
      'Montar la crema y colocarla bajo la masa de naranja.',
      'Dejar enfriar de nuevo durante al menos 4 horas.',
      'Servir con cáscara de naranja.'
    ],
    esLibreGluten: true,
    esVegana: false,
    esVegetariana: true,
    esLibreLactosa: false,
  ),
  Alimento(
    id: 'm7',
    categorias: [
      'c7',
    ],
    titulo: 'Panqueques',
    costeabilidad: Costeabilidad.costeable,
    complejidad: Complejidad.simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duracion: 20,
    ingredientes: [
      '1 1/2 tazas de harina común',
      '3 1/2 cucharaditas de polvo para hornear',
      '1 cucharadita de sal',
      '1 cucharada de azúcar blanca',
      '1 1/4 tazas de leche',
      '1 huevo',
      '3 cucharadas de mantequilla derretida'
    ],
    pasos: [
      'En un tazón grande, tamice la harina, la levadura, la sal y el azúcar.',
      'Haga un hueco en el centro y vierta la leche, el huevo y la mantequilla derretida; mezcle hasta que esté suave.',
      'Caliente una plancha o sartén ligeramente engrasada a fuego medio-alto.',
      'Vierta o saque la masa sobre la plancha, usando aproximadamente 1/4 de taza para cada panqueque. Dore por ambos lados y sirva caliente.'
    ],
    esLibreGluten: true,
    esVegana: false,
    esVegetariana: true,
    esLibreLactosa: false,
  ),
  Alimento(
    id: 'm8',
    categorias: [
      'c8',
    ],
    titulo: 'Pollo al curry cremoso indio',
    costeabilidad: Costeabilidad.costosa,
    complejidad: Complejidad.desafiante,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duracion: 35,
    ingredientes: [
      '4 pechugas de pollo',
      '1 cebolla',
      '2 dientes de ajo',
      '1 jengibre',
      '4 cucharadas de almendras',
      '1 cucharadita de pimienta de cayena',
      '500 ml de leche de coco'
    ],
    pasos: [
      'Cortar y freír la pechuga de pollo.',
      'Mezclar la cebolla, el ajo y el jengibre hasta formar una pasta y sofreírlo todo.',
      'Añadir especias y sofreír.',
      'Añadir la pechuga de pollo y 250 ml de agua y cocinar todo durante 10 minutos.',
      'Añadir leche de coco.',
      'Servir con arroz.'
    ],
    esLibreGluten: true,
    esVegana: false,
    esVegetariana: false,
    esLibreLactosa: true,
  ),
  Alimento(
    id: 'm9',
    categorias: [
      'c9',
    ],
    titulo: 'Soufflé de chocolate',
    costeabilidad: Costeabilidad.costeable,
    complejidad: Complejidad.dificil,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duracion: 45,
    ingredientes: [
      '1 cucharadita de mantequilla derretida',
      '2 cucharadas de azúcar blanca',
      '56 g de chocolate negro 70%, troceado',
      '1 cucharada de mantequilla',
      '1 cucharada de harina común',
      '4 1/3 cucharadas de leche fría',
      '1 pizca de sal',
      '1 pizca de pimienta de cayena',
      '1 yema de huevo grande',
      '2 claras de huevo grandes',
      '1 pizca de crémor tártaro',
      '1 cucharada de azúcar blanca'
    ],
    pasos: [
      'Precalentar el horno a 190 °C. Forrar una bandeja para hornear con borde con papel vegetal.',
      'Pintar ligeramente el fondo y los lados de 2 ramequines con 1 cucharadita de mantequilla derretida; cubrir el fondo y los lados hasta el borde.',
      'Añadir 1 cucharada de azúcar blanca a los ramequines. Girar los ramequines hasta que el azúcar cubra toda la superficie.',
      'Colocar los trozos de chocolate en un bol metálico.',
      'Colocar el bol sobre una olla con aproximadamente 3 tazas de agua caliente a fuego lento.',
      'Derretir 1 cucharada de mantequilla en una sartén a fuego medio. Espolvorear con harina. Batir hasta que la harina se integre con la mantequilla y la mezcla espese.',
      'Incorporar la leche fría batiendo hasta que la mezcla esté suave y espesa. Transferir la mezcla a un bol con el chocolate derretido.',
      'Añadir sal y pimienta de cayena. Mezclar bien. Añadir la yema de huevo y mezclar bien.',
      'Deja el bol sobre el agua caliente (no a fuego lento) para mantener el chocolate caliente mientras bates las claras.',
      'Coloca 2 claras de huevo en un bol; añade el crémor tártaro. Bate hasta que la mezcla empiece a espesar y un chorrito del batidor permanezca en la superficie aproximadamente 1 segundo antes de desaparecer.',
      'Añade 1/3 del azúcar y bate. Incorpora un poco más de azúcar durante unos 15 segundos.',
      'Incorpora el resto del azúcar. Continúa batiendo hasta que la mezcla tenga una consistencia similar a la de la crema de afeitar y forme picos suaves, de 3 a 5 minutos.',
      'Transfiere un poco menos de la mitad de las claras al chocolate.',
      'Mezcla hasta que las claras se integren completamente con el chocolate.',
      'Añade el resto de las claras; incorpóralas suavemente al chocolate con una espátula, levantándolas desde el fondo y doblándolas.',
      'Deja de batir cuando la clara desaparezca. Divide la mezcla entre 2 ramequines preparados. Coloque los moldes en una bandeja para hornear preparada. Hornee en horno precalentado hasta que los moldes estén inflados y hayan subido por encima de los bordes, de 12 a 15 minutos.',
    ],
    esLibreGluten: true,
    esVegana: false,
    esVegetariana: true,
    esLibreLactosa: false,
  ),
  Alimento(
    id: 'm10',
    categorias: [
      'c2',
      'c5',
      'c10',
    ],
    titulo: 'Ensalada de espárragos con tomates cherry',
    costeabilidad: Costeabilidad.lujosa,
    complejidad: Complejidad.simple,
    imagenUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duracion: 30,
    ingredientes: [
      'Espárragos blancos y verdes',
      '30 g de piñones',
      '300 g de tomates cherry',
      'Ensalada',
      'Sal, pimienta y aceite de oliva'
    ],
    pasos: [
      'Lavar, pelar y cortar los espárragos,',
      'Cocer en agua con sal,',
      'Salpimentar los espárragos,',
      'Asar los piñones,',
      'Cortar los tomates por la mitad,',
      'Mezclar con los espárragos, la ensalada y el aliño,',
      'Servir con baguette.'
    ],
    esLibreGluten: true,
    esVegana: true,
    esVegetariana: true,
    esLibreLactosa: true,
  ),
];
