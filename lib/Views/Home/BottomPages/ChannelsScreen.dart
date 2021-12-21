import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_ui_getx/Controllers/ChannelController.dart';
import 'package:live_ui_getx/Utils/Colors.dart';
import 'package:sizer/sizer.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChannelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
       
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.arrow_back_ios_new)),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          Text('Lounge',style: TextStyle(color: AppColors.greenColor,fontWeight: FontWeight.w500,fontSize: 17.0.sp),),
          SizedBox(height: 5.0,),
          Text('Public - 10 members',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 13.0.sp),),
          Expanded(
            child: GetBuilder<ChannelController>(
              init:ChannelController(),
              
              builder: (controller) {
                return ListView.builder(
                          itemCount: controller.ChannelItems.length,
                          itemBuilder: (context, index) {
                             var item = controller.ChannelItems[index];
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
                                        Text(item.title,style: TextStyle(fontWeight: FontWeight.bold),),
                                        SizedBox(height: 4.0),
                                        Text(item.subtitle,overflow: TextOverflow.ellipsis,maxLines: 2 ,style: TextStyle(color: Colors.grey,fontSize: 12.sp),),
                                      ],
                
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(timeago.format(item.dateTime),style: TextStyle(fontSize: 12.sp),),
                                      SizedBox(height: 4.0),
                                      CircleAvatar(
                                        radius: 14,
                                        backgroundImage: NetworkImage(item.img),
                
                                      ),
                
                                    ],
                                  ),
                
                                ],
                
                              ),
                             
                             
                
                
                
                            ],
                          ),
                        );
                         
            
            
                        }
                        
                        
                        ); 
              },
            ),
          
          
          
          ),
        ],
      ),
    );
  }
}
