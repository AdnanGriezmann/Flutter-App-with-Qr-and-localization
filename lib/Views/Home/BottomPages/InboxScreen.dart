import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_ui_getx/Controllers/InboxController.dart';
import 'package:sizer/sizer.dart';
import 'package:timeago/timeago.dart' as timeago;

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final InboxController controller = Get.put(InboxController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(1.0.w),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Inbox',
                      style: TextStyle(
                          fontSize: 18.0.sp, fontWeight: FontWeight.bold)),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.filter_list)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
              Expanded(
                child: RawScrollbar(
                    thumbColor: Colors.grey,
                    radius: Radius.circular(40.0),
                   
                   mainAxisMargin: 23.0,

                  child: ListView.builder(
                    
                      itemCount: controller.inboxItems.length,
                      itemBuilder: (context, index) {
                        var item = controller.inboxItems[index];
                        return Padding(
                          padding:  EdgeInsets.symmetric(vertical: 9.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(item.title?? "-",style: TextStyle(fontWeight: FontWeight.bold),),
                                        SizedBox(height: 4.0),
                                        Text(item.subtitle?? "-",overflow: TextOverflow.ellipsis,maxLines: 2 ,style: TextStyle(color: Colors.grey,fontSize: 12.sp),),
                                      ],
                
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(timeago.format(item.dateTime ?? DateTime.now()),style: TextStyle(fontSize: 12.sp),),
                                      SizedBox(height: 4.0),
                                      CircleAvatar(
                                        radius: 14,
                                        backgroundImage: NetworkImage(item.img?? ''),
                
                                      ),
                
                                    ],
                                  ),
                
                                ],
                
                              ),
                              SizedBox(height: 4.0),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),border: Border.all(),
                                color: Colors.amber,
                                
                                
                                
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('# ${item.tag}',style: TextStyle(fontSize: 12.sp),),
                                  ],
                
                                ),
                              ),
                
                
                
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
