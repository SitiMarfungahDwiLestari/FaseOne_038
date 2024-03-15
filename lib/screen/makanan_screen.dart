import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ucp_satu/widget/makanan_widget.dart';
import 'package:ucp_satu/screen/detail_screen.dart';

class MakananScreen extends StatefulWidget {
  const MakananScreen({super.key, required this.nama, required this.telp});

  final String nama;
  final String telp;

  @override
  State<MakananScreen> createState() => _MakananScreenState();
}

class _MakananScreenState extends State<MakananScreen> {
  final TextEditingController makanan = TextEditingController();
  final TextEditingController minuman = TextEditingController();
  final TextEditingController dessert = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    makanan.dispose();
    minuman.dispose();
    dessert.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Makanan"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Text("Nama: ${widget.nama}"),
        Text("No Telp: ${widget.telp}"),
        SizedBox(
          height: 20,
        ),
        MakananWidget(
          formKey: formKey,
          etMakanan: makanan,
          etMinuman: minuman,
          etDessert: dessert,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  nama: widget.nama,
                  telp: widget.telp,
                  makanan: makanan.text,
                  minuman: minuman.text,
                  dessert: dessert.text,
                ),
              ),
            );
          },
          child: Text('Submit'),
        ),
      ]),
    );
  }
}
