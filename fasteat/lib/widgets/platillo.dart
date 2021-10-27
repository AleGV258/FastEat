import 'package:fasteat/widgets/comentarios.dart';
import 'package:flutter/material.dart';

class Platillo extends StatelessWidget {
  const Platillo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
              'https://media.gq.com.mx/photos/5ced746cd09b9ae227169147/16:9/w_2560%2Cc_limit/GettyImages-688974829.jpg',
            ),
          ),
          titulo(),
          SeccionBotones(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('restaurante');
              },
              child: Text(
                'Restaurante Guaquería',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 25, color: Colors.red),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Descripción',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
                'Nuestra jugosa hamburguesa Angus cubierta con crujientes tiras de cebolla y blue cheese, bañados con salsa BBQ, acompañada de ensalada de col tipo Baja.',
                textAlign: TextAlign.justify),
          ),
          comentarios(),
          Comentarios(),
        ],
      ),
    );
  }
}

class SeccionBotones extends StatelessWidget {
  const SeccionBotones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text(
                  'Platillo Calificado',
                  textAlign: TextAlign.center,
                ),
                content: const Text(
                  'El platillo se a calificado.',
                  textAlign: TextAlign.center,
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: BotonPersonalizado(icon: Icons.star, texto: 'Calificar'),
          ),
          InkWell(
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text(
                  'Platillo Agregado a Favoritos',
                  textAlign: TextAlign.center,
                ),
                content: const Text(
                  'El platillo se a agregado a tus favoritos.',
                  textAlign: TextAlign.center,
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: BotonPersonalizado(
                icon: Icons.favorite, texto: 'Agregar a favorito'),
          ),
        ],
      ),
    );
  }
}

class BotonPersonalizado extends StatelessWidget {
  final IconData icon;
  final String texto;
  const BotonPersonalizado({Key? key, required this.icon, required this.texto})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.red),
        //puede ir sin el this tambien
        Text(this.texto, style: TextStyle(color: Colors.red)),
      ],
    );
  }
}

class titulo extends StatelessWidget {
  const titulo({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hamburguesa',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Expanded(child: Container(height: 10)),
          Text('\$ 105.00',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 25)),
        ],
      ),
    );
  }
}

class comentarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Comentarios',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
