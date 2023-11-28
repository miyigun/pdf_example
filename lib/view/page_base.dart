import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_example/controller/consts/colors.dart';
import 'package:pdf_example/controller/consts/text_style.dart';
import 'package:pdf_example/controller/controller.dart';
import 'package:pdf_example/controller/data.dart';
import 'package:pdf_example/view/pdf_in_device_tab.dart';

var controller = Get.put(Controller());

class PageBase extends StatelessWidget {
  const PageBase({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: bgDarkColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff1F212C),
          title: Text(
            "Pdf App".tr,
            style: myStyle(
                family: regular2,
              color: yellowColor,
              size: 24
            ),
          ),
          bottom: TabBar(
            //isScrollable: true,
            dividerColor: bgDarkColor,
            labelColor: yellowColor,
            tabs: [
              Tab(
                icon: const Icon(Icons.edit_document),
                text: 'Device'.tr,
              ),
              Tab(
                  icon: const Icon(Icons.construction),
                  text: 'Tools'.tr
              ),
              Tab(
                  icon: const Icon(Icons.settings),
                  text: 'Settings'.tr
              ),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: <Widget>[
              PdfInDeviceTab(),
            ],
          ),
        ),
      ),
    );
  }
}
