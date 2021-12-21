import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:live_ui_getx/Controllers/QR_controller.dart';
import 'package:live_ui_getx/Utils/Colors.dart';
import 'package:sizer/sizer.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          TextButton(
                              onPressed: () {
                                context.setLocale(Locale('en', 'US'));
                                Get.back();
                              },
                              child: Text(
                                'US ENGLISH',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0.sp),
                              )),
                          TextButton(
                              onPressed: () {
                                context.setLocale(Locale('es', 'US'));
                                Get.back();
                              },
                              child: Text('ES SPANISH',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0.sp))),
                        ],
                      ),
                    ));
                  },
                  child: Container(
                    color: AppColors.Bgblue,
                    height: 16.0.h,
                    width: 16.0.h,
                    child: Center(
                        child: Text(
                      'Languages',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0.sp),
                    ).tr()),
                  ),
                ),
                SizedBox(
                  width: 8.0.w,
                ),
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(Container(
                      color: AppColors.darkblue,
                      child: Column(
                        children: [
                          QrImage(
                            data: '12557867',
                            size: 200.0,
                            gapless: false,
                            version: 1,
                          ),
                          SizedBox(height: 8.0),
                          Text('Scan Your Code'),
                          SizedBox(height: 8.0),
                          GetBuilder<QRController>(
                            init: QRController(),
                            builder: (controller) {
                              return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: AppColors.greenColor,
                                  ),
                                  onPressed: () {
                                    controller.scanQR();
                                  },
                                  child: Text('Scan QR'));
                            },
                          )
                        ],
                      ),
                    ));
                  },
                  child: Container(
                    color: AppColors.redcolor,
                    height: 16.0.h,
                    width: 16.0.h,
                    child: Center(
                        child: Text(
                      'Features',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0.sp),
                    ).tr()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
