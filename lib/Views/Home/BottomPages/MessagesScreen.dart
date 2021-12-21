import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_ui_getx/Controllers/MessagesController.dart';
import 'package:live_ui_getx/Utils/Colors.dart';
import 'package:sizer/sizer.dart';
import 'package:timeago/timeago.dart' as timeago;

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3.0.w),
                child: Text(
                  'Messages',
                  style:
                      TextStyle(color: AppColors.redcolor, fontSize: 17.0.sp),
                ),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ],
          ),
          Expanded(
              child: GetBuilder<MessagesController>(
            init: MessagesController(),
            builder: (controller) {
              return ListView.builder(
                itemCount: controller.MessageItem.length,
                itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: 4.0.h,
                      width: 9.0.w,
                      decoration: BoxDecoration(
                        color: Colors.blue,

                      ),
                      child: controller.MessageItem.length > 1  ? Stack(
                        children: [
                          Positioned(
                            child: CircleAvatar(
                              radius: 16,
                               backgroundColor: Colors.red,
                        backgroundImage: NetworkImage(controller.MessageItem[index].images.first),
                            ),
                            left: 0,
                            top: 0,
                            
                          ),
                           Positioned(
                            child: CircleAvatar(
                              radius: 16,
                               backgroundColor: Colors.red,
                        backgroundImage: NetworkImage(controller.MessageItem[index].images.last),
                            ),
                            right: 0,
                            bottom: 0,
                            
                          ),
                        ],
                      ) : CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.red,
                        backgroundImage: NetworkImage(controller.MessageItem[index].images.first),
                      ),


                    ),
                    SizedBox(width: 5.0,),
                    Expanded(
                      child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(controller.MessageItem[index].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),

                            Text(timeago.format(controller.MessageItem[index].dateTime,),
                            style: TextStyle(color: AppColors.greenColor),
                            
                            
                            ),

                          ],

                        ),
                        SizedBox(height: 1.0.h),
                        Text(controller.MessageItem[index].subtitle),
                      ],
                      ),
                    ),
                  ],





                );
              });
            },
          )),
        ],
      ),
    );
  }
}
