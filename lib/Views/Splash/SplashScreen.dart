import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_ui_getx/Controllers/Splash.Controller.dart';
import 'package:live_ui_getx/Utils/Colors.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController> (
      init: SplashController(),
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             
              children: [
                Container(
                 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Awesome',
                        style: TextStyle(
                          color: AppColors.greenColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp,
                          wordSpacing: 2.2,
                        ),
                      ).tr(),
                      SizedBox(
                        width: 3.0.w,
                      ),
                      Text(
                        'APP',
                        style: TextStyle(
                          color: AppColors.textdarkGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.sp,
                          wordSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
