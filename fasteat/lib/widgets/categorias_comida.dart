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
                    Image(image: AssetImage('assets/Logo3.png'), height: 300),
                icon: Icons.fastfood,
                color: Colors.white,
                texto: 'Comida Rápida',
              ),
              _Categoria(
                imagen:
                    Image(image: AssetImage('assets/Logo3.png'), height: 300),
                icon: Icons.food_bank,
                color: Colors.white,
                texto: 'Restaurantes',
              ),
              //_categorias(),
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
  final Image imagen;
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
          image: AssetImage('assets/pantallaInicio4.png'),
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
