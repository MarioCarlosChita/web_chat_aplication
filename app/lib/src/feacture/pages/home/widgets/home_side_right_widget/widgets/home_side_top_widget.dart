import 'package:flutter/material.dart';
import 'package:web_application/src/feacture/enums/user_presence.dart';

import '../../../../../../core/constants/theme_app.dart';
import '../../../../../../core/helper/user_presence_helper.dart';

class HomeSideTopWidget extends StatefulWidget {
  const HomeSideTopWidget({Key? key}) : super(key: key);

  @override
  State<HomeSideTopWidget> createState() => _HomeSideTopWidgetState();
}

class _HomeSideTopWidgetState extends State<HomeSideTopWidget> {
  @override
  Widget build(BuildContext context) {
    Size _mediaSize = MediaQuery.of(context).size;
    return  Container(
      width: _mediaSize.width,
      height:60,
      color: Colors.white,
      child: Card(
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child:Container(
            padding: EdgeInsets.only(left:40),
            child: Row(
              children:[
                _userSelectActive(),
                 SizedBox(width:20,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                          Text("Pedro Antonio" , style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),) ,
                          SizedBox(height:5,) ,
                          Text("Active now",style: TextStyle(
                             color: Colors.grey
                          ),)
                     ],
                 ) ,
                 Expanded(child: Container(
                    padding: EdgeInsets.only(
                      right:20
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.phone , color: messageTextColor)) ,
                        SizedBox(width:5,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined , color: messageTextColor)) ,
                      ],
                    ),
                 ))
              ],
            ),
        ),
      ),
    );
  }


  Widget _userSelectActive(){
     return  Container(
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
                 color: getUserPresence(userPresence.ONLINE),
               ),

             ),
             alignment:Alignment.bottomRight,
           )
         ],
       ),
       decoration: BoxDecoration(
           image: DecorationImage(
               image: AssetImage("images/img1.jpg") ,
               fit: BoxFit.cover
           ) ,
           borderRadius: BorderRadius.circular(50)
       ),
     );
  }
}
