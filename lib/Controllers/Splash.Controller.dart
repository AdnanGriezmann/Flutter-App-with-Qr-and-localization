

import 'package:get/get.dart';
import 'package:live_ui_getx/Views/Home/Mainpage.dart';


class SplashController extends GetxController { 
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 6), () {
      Get.offAll(MainPage(), transition: Transition.rightToLeftWithFade);
      
    });  
    
  }  

  
}  
