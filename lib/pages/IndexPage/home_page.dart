

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realview_openlibrary_app/pages/IndexPage/controllers/index_controller.dart';
import 'package:realview_openlibrary_app/pages/IndexPage/widgets/open_library_bottom_navigation_bar.dart';

class HomePage extends GetView<IndexController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(IndexController());
    return Scaffold(
      appBar: AppBar(

      ),
      body: Obx(() => controller.pageList[controller.selectedPageIndex.value]),
     bottomNavigationBar: const OpenLibraryBottomNavigationBar(),
    );
  }
}