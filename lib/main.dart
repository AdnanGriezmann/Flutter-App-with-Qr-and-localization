import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:live_ui_getx/Utils/Colors.dart';
import 'package:live_ui_getx/Views/Splash/SplashScreen.dart';
import 'package:sizer/sizer.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en','US'),Locale('es','US')],
       path: 'assets/translations',
       fallbackLocale: Locale('en','US'),
    child: MyApp(),

  ),
    );
}


class MyApp extends StatelessWidget {
  
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, 

    );
   return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          debugShowCheckedModeBanner: false,
          title: 'Mesg',
        
        theme: ThemeData.dark().copyWith(
          primaryColor: AppColors.darkblue,
          
          visualDensity: VisualDensity.adaptivePlatformDensity,   
        ),           

          
          home: SplashScreen(),
         
         

        );
      },
    );
  }
}