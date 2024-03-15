import 'package:flutter/material.dart';

class MakananWidget extends StatefulWidget {
  const MakananWidget(
      {super.key,
      required this.formKey,
      required this.etMakanan,
      required this.etMinuman,
      required this.etDessert});

  final GlobalKey<FormState> formKey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDessert;

  @override
  State<MakananWidget> createState() => _MakananWidgetState();
}

class _MakananWidgetState extends State<MakananWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.text,
          controller: widget.etMakanan,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
              labelText: "Makanan",
              hintText: "Masukkan Makanan",
              prefixIcon: Icon(Icons.fastfood)),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Makanan Harus Diisi";
            }
            return null;
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: widget.etMinuman,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
              labelText: "Minuman",
              hintText: "Masukkan Minuman",
              prefixIcon: Icon(Icons.local_drink)),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Minuman Harus Diisi";
            }
            return null;
          },
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: widget.etDessert,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
              labelText: "Dessert",
              hintText: "Masukkan Dessert",
              prefixIcon: Icon(Icons.cake)),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Minuman Harus Diisi";
            }
            return null;
          },
        ),
        SizedBox(
          height: 20,
        ),
        
      ],
    );
  }
}
