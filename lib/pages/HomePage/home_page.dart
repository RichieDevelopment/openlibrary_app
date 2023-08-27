import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realview_openlibrary_app/pages/HomePage/controllers/home_controller.dart';

import 'widgets/author_tile.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    Size screenSize = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Obx(
            () => TextField(
              controller: controller.searchFieldController.value,
              onSubmitted: controller.queryAuthorByName,
            ),
          ),
          SizedBox(height: screenSize.height * 0.01),
          SizedBox(
            height: screenSize.height * 0.3,
            child: Obx(() => ListView.separated(
              itemCount: controller.query.value.authorList.length,
              itemBuilder: (BuildContext context, int index) => AuthorTile(controller: controller, index: index), separatorBuilder: (BuildContext context, int index) => const Divider(), )),
          )
        
        ],
      ),
    );
  }
}


