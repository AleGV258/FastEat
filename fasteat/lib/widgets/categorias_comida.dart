import 'package:fasteat/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class CategoriasPlatillos extends StatefulWidget {
  const CategoriasPlatillos({Key? key}) : super(key: key);

  @override
  _CategoriasPlatillosState createState() => _CategoriasPlatillosState();
}

class _CategoriasPlatillosState extends State<CategoriasPlatillos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        children: [
          TableRow(
            children: [
              _Categoria(
                imagen:
                    'https://zetter.com.mx/wp-content/uploads/2020/09/restaurante-comida-rapida-exitoso.jpg',
                icon: Icons.fastfood,
                color: Colors.white,
                texto: 'Comida Rápida',
              ),
              _Categoria(
                imagen:
                    'https://tipsparatuviaje.com/wp-content/uploads/2020/03/lasana-comida.jpg',
                icon: Icons.food_bank,
                color: Colors.white,
                texto: 'Comida Italiana',
              ),
            ],
          ),
          TableRow(
            children: [
              _Categoria(
                imagen:
                    'https://dam.caras.com.mx/wp-content/uploads/2020/09/comida-mexicana-para-las-fiestas-patrias.jpg',
                icon: Icons.food_bank,
                color: Colors.white,
                texto: 'Comida Mexicana',
              ),
              _CategoriaRestaurantes(
                imagen: Image(
                    image: NetworkImage(
                        'https://phantom-expansion.unidadeditorial.es/ca87f899635400532cc5d854c7504c8b/f/jpg/assets/multimedia/imagenes/2019/06/25/15614775255199.jpg'),
                    height: 300),
                icon: Icons.food_bank,
                color: Colors.white,
                texto: 'Restaurantes',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _categorias() {
    return FutureBuilder(
      future: categorias.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Table(
            //children: _categoria(snapshot.data, context),
            );
      },
    );
  }
}

class _Categoria extends StatelessWidget {
  final String imagen;
  final IconData icon;
  final Color color;
  final String texto;
  const _Categoria(
      {Key? key,
      required this.imagen,
      required this.icon,
      required this.color,
      required this.texto})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: NetworkImage(this.imagen),
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.dstATop),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          print("Container clicked");
          Navigator.of(context).pushNamed('platillosCategoria');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: this.color,
              child: Icon(this.icon, size: 35),
              radius: 30,
            ),
            Text(this.texto, style: TextStyle(color: this.color, fontSize: 22)),
          ],
        ),
      ),
    );
  }
}

class _CategoriaRestaurantes extends StatelessWidget {
  final Image imagen;
  final IconData icon;
  final Color color;
  final String texto;
  const _CategoriaRestaurantes(
      {Key? key,
      required this.imagen,
      required this.icon,
      required this.color,
      required this.texto})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: NetworkImage(
              'https://resizer.otstatic.com/v2/photos/wide-huge/1/31667145.jpg'),
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.dstATop),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          print("Container clicked");
          Navigator.of(context).pushNamed('restaurante');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: this.color,
              child: Icon(this.icon, size: 35),
              radius: 30,
            ),
            Text(this.texto, style: TextStyle(color: this.color, fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
