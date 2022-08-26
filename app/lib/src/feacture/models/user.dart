
import '../enums/user_presence.dart';

class User{
  String uidUser;
  String imageUserUrl ;
  String userName;
  String lastMessage;
  String lastMomentOnline;
  bool   isUserOnline ;
  bool   isMessageActive;
  userPresence   userpresence ;

   User({
    required this.uidUser,
    required this.imageUserUrl,
    required this.lastMessage,
    required this.lastMomentOnline,
    required this.userName,
    required this.isUserOnline ,
    required this.isMessageActive ,
    required this.userpresence
  });

}

List<User> LIST_MESSAGE_USERS = [
   User(
       uidUser: "1",
       imageUserUrl:"images/img1.jpg",
       lastMessage: "thats's good me , see later",
       lastMomentOnline: "2:30pm",
       userName: "Pedro Antonio",
       isUserOnline: true ,
       isMessageActive: true ,
       userpresence: userPresence.ONLINE
   ),
  User(
      uidUser: "2",
      imageUserUrl:"images/img9.jpg",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Ana Hilcuy",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.OFFLINE
  ),
  User(
      uidUser: "2",
      imageUserUrl:"images/img3.jpg",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Hattie Bower",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.AUSENT
  ),
  User(
      uidUser: "2",
      imageUserUrl:"images/img4.jpg",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Hattie Bower",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.AUSENT
  ),
  User(
      uidUser: "2",
      imageUserUrl:"images/img5.jpg",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Agostinho Jose",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.ONLINE
  ),

  User(
      uidUser: "2",
      imageUserUrl:"images/img7.jpg",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Carvalho Perdo",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.AUSENT
  ),

  User(
      uidUser: "2",
      imageUserUrl:"images/img8.jpg",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Tiago Pedro",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.MEETING
  ),

  User(
      uidUser: "2",
      imageUserUrl:"images/img10.jpg",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Helwey cuswey",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.MEETING
  ),

  User(
      uidUser: "2",
      imageUserUrl:"images/img11.jpg",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Hattie cuswey",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.MEETING
  ),

  User(
      uidUser: "2",
      imageUserUrl:"images/img12.jpg",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Eunice cuswey",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.MEETING
  ),

  User(
      uidUser: "2",
      imageUserUrl:"images/img12.png",
      lastMessage: "thats's good me , see later",
      lastMomentOnline: "2:30pm",
      userName: "Maude cuswey",
      isUserOnline: true ,
      isMessageActive: false ,
      userpresence: userPresence.MEETING
  ),
];

