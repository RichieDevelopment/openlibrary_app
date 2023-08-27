
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realview_openlibrary_app/pages/FavoritePage/favorite_page.dart';

import '../../HomePage/home_page.dart';

class IndexController extends GetxController {
  
  RxInt selectedPageIndex = 0.obs;
  List<Widget> pageList = [const HomePage(), const FavoritePage()];


  switchPage(int index) {
    selectedPageIndex.value = index;
  }
}