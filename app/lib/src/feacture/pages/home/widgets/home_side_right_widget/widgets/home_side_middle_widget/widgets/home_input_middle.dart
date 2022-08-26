import 'package:flutter/material.dart';

import '../../../../../../../../core/constants/theme_app.dart';

class HomeInputMiddle extends StatefulWidget {
  const HomeInputMiddle({Key? key}) : super(key: key);

  @override
  State<HomeInputMiddle> createState() => _HomeInputMiddleState();
}

class _HomeInputMiddleState extends State<HomeInputMiddle> {

  final TextEditingController _searchMessage =  TextEditingController();
  final GlobalKey<FormState> _formMessage =  GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  void dispose(){
    _searchMessage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size _middleInput =  MediaQuery.of(context).size;
    return Container(
         width: _middleInput.width ,
         height: 60,
         child: Form(
           key: _formMessage,
           child: Container(
             height:60,
             width: 300,
             padding: EdgeInsets.all(5),
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
             child:Card(
               elevation: 10,
               margin:EdgeInsets.only(left: 60, right: 60 ,bottom: 5),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10)
               ),
               child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                     margin: EdgeInsets.only(
                        left: 10
                     ),
                     child:  Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions , color: messageTextColor,)) ,
                         IconButton(onPressed: (){}, icon: Icon(Icons.image , color: messageTextColor,))
                       ],
                     ),
                   ),
                    Container(
                       width: _middleInput.width-690,
                       child: TextFormField(
                         controller: _searchMessage,
                         decoration: const InputDecoration(
                             hintText: "Inseri algo",
                             contentPadding: EdgeInsets.only(left: 10) ,
                             focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:Colors.transparent
                                )
                             ) ,
                             enabledBorder: OutlineInputBorder(
                                 borderSide: BorderSide(
                                     color:Colors.transparent
                                 )
                             )
                         ),
                       ),
                    ) ,
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: IconButton(onPressed:(){}, icon: Icon(Icons.send,color:Colors.blue)),
                    )
                  ],
               ),
             ),
           ),
         ),
    );
  }
}
