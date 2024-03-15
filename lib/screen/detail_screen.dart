import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String nama;
  final String telp;
  final String makanan;
  final String minuman;
  final String dessert;

  const DetailScreen({
    Key? key,
    required this.nama,
    required this.telp,
    required this.makanan,
    required this.minuman,
    required this.dessert,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nama: $nama"),
          Text("No Telp: $telp"),
          SizedBox(height: 20),
          Text("Makanan"),
          Text("$makanan"),
          SizedBox(height: 20),
          Text("Minuman"),
          Text("$minuman"),
          SizedBox(height: 20),
          Text("Dessert"),
          Text("$dessert"),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
