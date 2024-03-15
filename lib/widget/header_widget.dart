import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //tidak usah menggunakan scaffold karena ini adalah widget
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          "Restaurent Food",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 25,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://th.bing.com/th/id/OIP.cW3WyikpXWjFbnw8BlmHigHaHa?rs=1&pid=ImgDetMain"),
          radius: 70,
        ),
      ],
    );
  }
}
