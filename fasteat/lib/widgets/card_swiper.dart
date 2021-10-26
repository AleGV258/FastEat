import 'package:card_swiper/card_swiper.dart';
import 'package:fasteat/models/favorito_model.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  final List<Favorito> favorito;
  const CardSwiper({Key? key, required this.favorito}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (this.favorito.length == 0) {
      return Container(
          width: double.infinity,
          height: size.height * 0.5,
          child: Center(
            child: CircularProgressIndicator(),
          ));
    }
    return Container(
      height: size.height * 0.6,
      width: double.infinity,
      color: Colors.red,
      child: Swiper(
        itemCount: favorito.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
