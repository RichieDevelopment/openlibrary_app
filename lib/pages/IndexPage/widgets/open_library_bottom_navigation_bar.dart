import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:realview_openlibrary_app/pages/IndexPage/controllers/index_controller.dart';

class OpenLibraryBottomNavigationBar extends GetView<IndexController> {
  const OpenLibraryBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(IndexController());
    return Obx(
      () => BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          )
        ],
        currentIndex: controller.selectedPageIndex.value,
        onTap: controller.switchPage,
      ),
    );
  }
}
