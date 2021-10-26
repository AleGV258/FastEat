import 'package:fasteat/models/favorito_model.dart';
import 'package:fasteat/widgets/Slider.dart';
import 'package:fasteat/widgets/card_swiper.dart';
import 'package:fasteat/widgets/menu_abajo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritoSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(favorito: [
              Favorito(idFavorito: 1, platillo: "Hamburguesas", restaurante: "restaurante1"),
              Favorito(idFavorito: 2, platillo: "Papas", restaurante: "restaurante2"),
              Favorito(idFavorito: 3, platillo: "Tacoos", restaurante: "restaurante3"),
              Favorito(idFavorito: 4, platillo: "Gorditas", restaurante: "restaurante4"),
            ]),
            SliderOpt(),
          ],
        ),
      ),
      bottomNavigationBar: MenuAbajo()
    );
  }
}
