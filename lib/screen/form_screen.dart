import 'package:flutter/material.dart';
import 'package:ucp_satu/screen/makanan_screen.dart';
import 'package:ucp_satu/widget/footer_widget.dart';
import 'package:ucp_satu/widget/form_widget.dart';
import 'package:ucp_satu/widget/header_widget.dart';

class DataForm extends StatefulWidget {
  const DataForm({Key? key}) : super(key: key);

  @override
  State<DataForm> createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  final TextEditingController nama = TextEditingController();
  final TextEditingController telp = TextEditingController();
  final TextEditingController alamat = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const HeaderWidget(),
              FormWidget(
                formKey: formKey,
                etNama: nama,
                etTelp: telp,
                etAlamat: alamat,
              ),
              FooterWidget(
                onPressedNext: () {
                  setState(() {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MakananScreen(
                            nama: nama.text,
                            telp: telp.text,
                          ),
                        ),
                        (route) => false,
                      );
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
