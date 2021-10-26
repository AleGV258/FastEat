import 'package:fasteat/widgets/menu_abajo.dart';
import 'package:flutter/material.dart';

class PaginaPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Perfil',
                style: TextStyle(color: Colors.red[300], fontSize: 29)),
            SizedBox(height: 20.0),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://assets.stickpng.com/thumbs/585e4bcdcb11b227491c3396.png'),
              radius: 90,
            ),
            SizedBox(height: 17.0),
            _usuario(),
            SizedBox(height: 15.0),
            _correo(),
            SizedBox(height: 15.0),
            _telefono(),
            SizedBox(height: 15.0),
            GestureDetector(
                child: Text('',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.orange[700],
                        fontSize: 15)),
                onTap: () {
                  Navigator.of(context).pushNamed('');
                }),
          ],
        ),
      ),
      bottomNavigationBar: MenuAbajo(),
    );
  }

  Widget _usuario() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Text(
            'Nombre:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Daniel León Paulin',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }

  Widget _correo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Text(
            'Correo Electrónico:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'dleon29@alumnos.uaq.mx',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }

  Widget _telefono() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Text(
            'Teléfono:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            '442-145-2984',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
