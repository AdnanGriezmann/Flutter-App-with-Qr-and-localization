import 'package:get/get.dart';

class Bottom_nav_Controller extends GetxController {
  var tabIndex = 0;

  void changedTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
