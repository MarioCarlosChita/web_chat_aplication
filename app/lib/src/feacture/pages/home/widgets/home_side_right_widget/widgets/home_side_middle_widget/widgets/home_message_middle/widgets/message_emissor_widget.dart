import 'package:flutter/material.dart';




class MessageEmissorWidget extends StatefulWidget {
  @override
  State<MessageEmissorWidget> createState() => _MessageEmissorWidgetState();
}

class _MessageEmissorWidgetState extends State<MessageEmissorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Padding(
             padding: EdgeInsets.only(
                top:10
             ),
             child: Container(
               width: 30,
               height:30,
               decoration: BoxDecoration(
                   image: const DecorationImage(
                       image: AssetImage("images/img1.jpg")
                   ) ,
                   borderRadius: BorderRadius.circular(50)
               ),
             ) ,
           ),
           Container(
              width: 300,
              decoration: const BoxDecoration(
                 borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                 )
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                    )
                ),
                 child:  Container(
                     margin: EdgeInsets.all(8),
                     child: Text("Ola Mário tudo bem  por ai ? podemos marcar uma reuniao amanha?" ,style: TextStyle(
                       color: Colors.black,
                       fontSize: 13,
                       fontWeight: FontWeight.w500
                     ),)
                 ),
              ),
           )
        ],
      ) ,
    );
  }
}
