import 'package:fasteat/widgets/menu_abajo.dart';
import 'package:flutter/material.dart';

class PaginaPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Perfil',
                style: TextStyle(color: Colors.red[300], fontSize: 25)),
            SizedBox(height: 10.0),
            _usuario(),
            SizedBox(height: 15.0),
            _correo(),
            SizedBox(height: 15.0),
            _telefono(),
            SizedBox(height: 15.0),
            _contrasena(),
            SizedBox(height: 20.0),
            //_registrarse(id, usuario, correo, telefono, contrasena, context),
            _registrarse(context),
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
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'Usuario',
          labelText: 'Usuario:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {
          //usuario = value;
        },
        //autofocus: true,
      ),
    );
  }

  Widget _correo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'ejemplo@correo.com',
          labelText: 'Correo Electrónico:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _telefono() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          icon: Icon(Icons.local_phone),
          hintText: 'Teléfono',
          labelText: 'Teléfono:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _contrasena() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          icon: Icon(Icons.password),
          hintText: 'Contraseña',
          labelText: 'Contraseña:',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _registrarse(BuildContext context) {
    //Widget _registrarse(Future id, String usuario, String correo, int telefono, String contrasena, BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed('categoria');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
        child: Text('Guardar Cambios', style: TextStyle(fontSize: 17.0)),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
