import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormWidget extends StatefulWidget {
  FormWidget(
      {super.key,
      required this.formKey,
      required this.etNama,
      required this.etTelp,
      required this.etAlamat});
  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etTelp;
  final TextEditingController etAlamat;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          children: [
            TextFormField(
                keyboardType: TextInputType.text,
                controller: widget.etNama,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    labelText: "Nama",
                    hintText: "Masukkan Nama Anda",
                    prefixIcon: Icon(Icons.supervised_user_circle)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong";
                  } else if (value.length < 2) {
                    return "Nama terlalu pendek";
                  } else if (value.length > 50) {
                    return "Nama terlalu panjang";
                  }
                  return null;
                }),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: widget.etTelp,
              decoration: InputDecoration(
                  labelText: "No Telepon",
                  hintText: "Masukkan Nomor Telepon Anda",
                  prefixIcon: Icon(Icons.phone)),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Nomor telepon tidak boleh kosong";
                } else if (value.length < 10) {
                  return "Masukkan nomor dengan benar";
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: widget.etAlamat,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  labelText: "Alamat",
                  hintText: "Masukkan Alamat Anda",
                  prefixIcon: Icon(Icons.location_city)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Alamat tidak boleh kosong";
                } else if (value.length < 5) {
                  return "Alamat terlalu pendek";
                } else if (value.length > 100) {
                  return "Alamat terlalu panjang";
                }
                return null;
              },
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text("Sex : "),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Laki-laki',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    Text('Laki-laki'),
                    Radio<String>(
                      value: 'Perempun',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value;
                        });
                      },
                    ),
                    Text('Perempuan'),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
