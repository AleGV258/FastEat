// import 'package:flutter/material.dart';

// class FavoritoSlider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 200,
//       color: Colors.green,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//               child: Text('Populares',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               padding: EdgeInsets.symmetric(horizontal: 20)),
//           Expanded(
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 1,
//                 itemBuilder: (BuildContext context, int index) {
//                   return _MoviePoster();
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _MoviePoster extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100,
//       height: 150,
//       color: Colors.pink,
//       margin: EdgeInsets.all(10),
//       child: Column(
//         children: [
//           GestureDetector(
//             // onTap: () => Navigator.pushNamed(context, 'detalles',
//             //     arguments: 'movie-instance'),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: FadeInImage(
//                 placeholder: AssetImage('assets/pantallaInicio1.png'),
//                 // placeholder: AssetImage('assets/no-image.jpg'),
//                 image: NetworkImage('https://via.placeholder.com/300x400'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           Text(
//             "Pelicula nueva, no se, un texto largo para probar cosas",
//             overflow: TextOverflow.ellipsis,
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }