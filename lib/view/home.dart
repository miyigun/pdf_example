import 'package:flutter/material.dart';
import 'package:pdf_example/controller/consts/text_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff070811),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff1F212C),
        title: Text(
          "Pdf Example",
          style: myStyle(),
        ),
      ),
    );
  }
}
