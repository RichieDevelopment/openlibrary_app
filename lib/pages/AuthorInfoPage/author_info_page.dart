import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realview_openlibrary_app/models/author.dart';
import 'package:realview_openlibrary_app/pages/AuthorInfoPage/controllers/author_info_controller.dart';
import 'package:realview_openlibrary_app/pages/AuthorInfoPage/wigets/info_box.dart';
import 'package:realview_openlibrary_app/theme/colors.dart';

class AuthorInfoPage extends GetView<AuthorInfoController> {
  const AuthorInfoPage({required this.authorKey, super.key});
  final String authorKey;

  @override
  Widget build(BuildContext context) {
    Get.put(AuthorInfoController(key: authorKey));
    Size screenSize = MediaQuery.of(context).size;

    return Obx(() {
      Author author = controller.author.value;
      return controller.loading.value
          ? Scaffold(
            body: Center(
                child: CircularProgressIndicator(
                color: OpenLibraryColor.black,
              )),
          )
          : Scaffold(
              appBar: AppBar(
                title: Text(author.name),
              ),
              body: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  InfoBox(title: "Birth Date", value: author.birthDate),
                  InfoBox(title: "Website", value: author.url),
                  InfoBox(title: "Wikipedia", value: author.wikipediaLink),
                  InfoBox(title: "Biographie", value: author.biographie)
                ]),
              ),
            );
    });
  }
}
