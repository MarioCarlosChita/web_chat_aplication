import 'package:flutter/material.dart';

class MessageReceptorWidget extends StatefulWidget {
  const MessageReceptorWidget({Key? key}) : super(key: key);
  @override
  State<MessageReceptorWidget> createState() => _MessageReceptorWidgetState();
}

class _MessageReceptorWidgetState extends State<MessageReceptorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            width: 300,

            decoration: const BoxDecoration(

                borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(40) ,

                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                )
            ),
            child: Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft:Radius.circular(40) ,

                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                  )
              ),
              child:  Container(
                  margin: EdgeInsets.all(8),
                  child: Text("Sim podemos ficar para Amanha" ,style: TextStyle(
                      color: Colors.white,
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
