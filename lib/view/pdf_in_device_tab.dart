import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_example/controller/consts/colors.dart';
import 'package:pdf_example/controller/controller.dart';

Controller controller = Get.find();

class PdfInDeviceTab extends StatelessWidget {
  const PdfInDeviceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgDarkColor,
    );
  }
}
