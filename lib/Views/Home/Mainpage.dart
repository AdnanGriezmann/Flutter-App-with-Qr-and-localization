import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_ui_getx/Controllers/Bottom_nav_Controller.dart';
import 'package:live_ui_getx/Controllers/InboxController.dart';
import 'package:live_ui_getx/Models/Inboxmodele.dart';
import 'package:live_ui_getx/Utils/Colors.dart';
import 'package:live_ui_getx/Views/Home/BottomPages/ChannelsScreen.dart';
import 'package:live_ui_getx/Views/Home/BottomPages/InboxScreen.dart';
import 'package:live_ui_getx/Views/Home/BottomPages/MessagesScreen.dart';
import 'package:live_ui_getx/Views/Home/BottomPages/SettingScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cont = Get.put(Bottom_nav_Controller());
    return GetBuilder<Bottom_nav_Controller>(
        init: Bottom_nav_Controller(),
        builder: (controller) {
          return Scaffold(
            body: IndexedStack(
              index: controller.tabIndex,
              children: [
                InboxScreen(),
                ChannelsScreen(),
                MessagesScreen(),
                SettingScreen(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                onTap: controller.changedTabIndex,
                currentIndex: controller.tabIndex,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppColors.bglightBlue,
                unselectedItemColor: AppColors.redcolor,
                backgroundColor: Colors.black,
                iconSize: 8.0.w,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.inbox_outlined), label: 'Inbox'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.tag), label: 'Channels'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.chat_bubble_outline_rounded),
                      label: 'Messages'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Setting'),
                ]),
            floatingActionButton: GetBuilder<InboxController>(
              init: InboxController(),
              builder: (controller) {
                
                return FabCircularMenu(
                    fabOpenIcon: cont.tabIndex == 2 ? Icon(Icons.chat_bubble_outline_outlined) : Icon(Icons.mode_edit_sharp),
                
                  children: [
                    IconButton(
                        icon: Icon(Icons.settings_applications),
                        onPressed: () {},
                        iconSize: 14.0.w,
                        color: Colors.black),
                    IconButton(
                        icon: Icon(Icons.share_location_sharp),
                        onPressed: () {},
                        iconSize: 14.0.w,
                        color: Colors.black),
                    IconButton(
                        icon: Icon(Icons.chat_rounded),
                        onPressed: () {
                          controller.addItem(
                            Inbox(
                              title: 'New Inbox Item',
                              subtitle:
                                  'Adnan: ok! that,s super nice.For now forward with this until someone missed you blah...',
                              tag: 'Development',
                              img:
                                  'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=',
                              dateTime: DateTime.now()
                                  .subtract(Duration(minutes: 16)),
                            ),
                            
                          );
                          controller.update();
                        },
                        iconSize: 14.0.w,
                        color: Colors.black),
                        
                  ],
                  
                  fabColor: Colors.amber,
                  fabSize: 18.0.w,
                  fabCloseColor: Colors.amber,
                  fabOpenColor: Colors.red,
                  ringDiameter: 66.0.w,
                  ringColor: Colors.blueAccent,
                );
              },
            ),
          );
        });
  }
}
