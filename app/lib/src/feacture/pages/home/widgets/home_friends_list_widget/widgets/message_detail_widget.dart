

import 'package:flutter/material.dart';
import 'package:web_application/src/core/helper/user_presence_helper.dart';

import '../../../../../../core/constants/theme_app.dart';
import '../../../../../models/user.dart';

class MessageDetailWidget  extends StatefulWidget{
  User selectedMessage ;
  MessageDetailWidget({required this.selectedMessage});

  MessageDetailWidgetState createState() => MessageDetailWidgetState();
}
class MessageDetailWidgetState  extends State<MessageDetailWidget>{


  @override
  Widget build(BuildContext context){
    return Container(
      height: 70,
      color: widget.selectedMessage.isMessageActive  ?  messageFriendsActiveColor: Colors.white,
      padding: EdgeInsets.all(10),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 40,
            height:40,
            child: Stack(
              children: [
                Align(
                   child:  Container(
                     width:8,
                     height:8,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50) ,
                       color: getUserPresence(widget.selectedMessage.userpresence),
                     ),

                   ),
                    alignment:Alignment.bottomRight,
                )
              ],
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.selectedMessage.imageUserUrl) ,
                    fit: BoxFit.cover
                ) ,
                borderRadius: BorderRadius.circular(50)
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.selectedMessage.userName,style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold ,
                fontSize: 14
              ),),
              SizedBox(height:5,),
              Text(widget.selectedMessage.lastMessage , style: TextStyle(
                color: messageTextColor,
                fontSize:12
              ),)
            ],
          ) ,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.selectedMessage.lastMomentOnline ,style: TextStyle(
                  color: messageTextColor,
                  fontSize:12
              ))
            ],
          )
        ],
      ),
    );
  }
}
