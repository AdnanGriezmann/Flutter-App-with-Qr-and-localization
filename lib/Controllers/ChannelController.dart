import 'package:get/get.dart';
import 'package:live_ui_getx/Models/Channelmodel.dart';


class ChannelController extends GetxController {
  List<Channel> ChannelItems = [
    Channel(
      title: 'New Setting enabled',
      subtitle:
          'Adnan: ok! that,s super nice.For now forward with this until someone missed you blah...',
      
      img:
          'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=',
      dateTime: DateTime.now().subtract(Duration(minutes: 15)),
    ),
    Channel(
      title: 'ROB',
      subtitle:
          'Hi how are u fine offcourse u will be learn a new level...',
    
      img:
          'https://images.unsplash.com/photo-1639164543505-01e8d1332f0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ4fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      dateTime: DateTime.now().subtract(Duration(minutes: 11)),
    ),
     Channel(
      title: 'KEpt',
      subtitle:
          'News are best to learn a tut ? gear ! fire a way...',
    
      img:
          'https://images.unsplash.com/photo-1639165637996-d6e79aff8823?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQ3fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      dateTime: DateTime.now().subtract(Duration(minutes: 25)),
    ),
     Channel(
      title: 'Lessi',
      subtitle:
          'Adnan: New are to learn this until someone missed you blah...',
      
      img:
          'https://images.unsplash.com/photo-1639305014770-3034d4d5026c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQxfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      dateTime: DateTime.now().subtract(Duration(minutes: 0)),
    ),
     Channel(
      title: 'Griez',
      subtitle:
          'Griezmann&messi are best player dude..',
      
      img:
          'https://images.unsplash.com/photo-1639260313633-96846ecec82f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      dateTime: DateTime.now().subtract(Duration(minutes: 5)),
    ),
     Channel(
      title: 'Norm',
      subtitle:
          'hi dude ur wtsp  no is 03332123124.',
     
      img:
          'https://images.unsplash.com/photo-1638090005766-323a2497c946?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      dateTime: DateTime.now().subtract(Duration(minutes: 10)),
    ),
    Channel(
      title: 'Feeli',
      subtitle:
          'Adnan:  nice.For now forward with this until someone missed you blah...',
     
      img:
          'https://images.unsplash.com/photo-1600105602037-21854ecf4feb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      dateTime: DateTime.now().subtract(Duration(minutes: 16)),
    ),
       Channel(
      title: 'weees',
      subtitle:
          'Adnan:  nice.For now forward with this until someone missed you blah...',
      
      img:
          'https://images.unsplash.com/photo-1638899828024-02667f8a9283?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      dateTime: DateTime.now().subtract(Duration(minutes: 16)),
    ),
       Channel(
      title: 'compt',
      subtitle:
          'Adnan:  nice.For now forward with this until someone missed you blah...',
     
      img:
          'https://images.unsplash.com/photo-1639100618065-358723b7961d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUxfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      dateTime: DateTime.now().subtract(Duration(minutes: 16)),
    ),
         Channel(
      title: 'compt',
      subtitle:
          'Adnan:  nice.For now forward with this until someone missed you blah...',
    
      img:
          'https://images.unsplash.com/photo-1639100618065-358723b7961d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUxfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      dateTime: DateTime.now().subtract(Duration(minutes: 16)),
    ),
      Channel(
      title: 'Feeli',
      subtitle:
          'Adnan:  nice.For now forward with this until someone missed you blah...',
     
      img:
          'https://images.unsplash.com/photo-1600105602037-21854ecf4feb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      dateTime: DateTime.now().subtract(Duration(minutes: 16)),
    ),
       Channel(
      title: 'weees',
      subtitle:
          'Adnan:  nice.For now forward with this until someone missed you blah...',
     
      img:
          'https://images.unsplash.com/photo-1638899828024-02667f8a9283?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDUyfHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
      dateTime: DateTime.now().subtract(Duration(minutes: 16)),
    ),
  ];

 // List<Inbox> get inboxItems => _inboxItems;
  
 
}
