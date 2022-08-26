import 'dart:html';

import 'package:flutter/material.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_friends_list_widget/widgets/message_detail_widget.dart';

import '../../../../../core/constants/theme_app.dart';
import '../../../../../core/helper/message_helper.dart';
import '../../../../models/user.dart';


class HomeFriendsList extends StatefulWidget {
  const HomeFriendsList({Key? key}) : super(key: key);

  @override
  State<HomeFriendsList> createState() => _HomeFriendsListState();
}

class _HomeFriendsListState extends State<HomeFriendsList> {

  final TextEditingController  _searchUsersFriends = TextEditingController();
  final GlobalKey<FormState>  _formSearchFriendsKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size _mediaDevice = MediaQuery.of(context).size;
    late User  selectedMessage ;

    return Card(
      elevation: 40,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.zero
      ),
      child: Container(
        width: 320,
        margin: EdgeInsets.zero,
        color:Colors.white,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             const Padding(padding: EdgeInsets.only(
               left:14,
               top:15,
             ),
             child:  Text("Messages", style: TextStyle(
                 color:Colors.black87,
                 fontSize: 20,
                 fontWeight: FontWeight.bold
             ),),

             ),
             const SizedBox(height:10,),
             Padding(
               padding: EdgeInsets.only(
                 left:14,
                 top:15,
               ),
               child: Form(
                 key: _formSearchFriendsKey,
                 child: Card(
                   child:  TextFormField(
                     controller: _searchUsersFriends,
                     decoration: const InputDecoration(
                         enabled: true,
                         hintText: "Search",
                         hintStyle: TextStyle(
                             color: Colors.grey,
                             fontWeight: FontWeight.w200
                         ),
                         prefixIcon: Icon(Icons.search, color: Colors.grey,),
                         enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                                 color:Colors.white
                             )
                         ) ,
                         border: OutlineInputBorder(
                             borderSide: BorderSide(
                                 color:Colors.white
                             )
                         ),
                         disabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                                 color:Colors.white
                             )
                         ),
                         focusedBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                                 color:Colors.white
                             )
                         )
                     ),
                   ),
                 ),
               ) ,
             ),
             SizedBox(height:25,),
             Container(
               height:_mediaDevice.height -200,
               child: ListView.builder(
                   itemCount: LIST_MESSAGE_USERS.length,
                   itemBuilder: (_ ,index) {
                     return InkWell(
                         onTap: (){
                           // clean the datas
                           setState(() {
                             LIST_MESSAGE_USERS   =  cleanListUsersSelectedHelper(lista:LIST_MESSAGE_USERS , index: index);
                           });

                         },
                         child: MessageDetailWidget(selectedMessage: LIST_MESSAGE_USERS[index]),
                     );
                   }
               ),
             )

          ],
        ),
      ),

    );
  }
}
