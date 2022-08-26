
import 'package:flutter/material.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_side_left_widget/widgets/menu_side_left_widget.dart';

import '../../../../../core/constants/theme_app.dart';

class HomeSideLeftWidget extends StatefulWidget {
  const HomeSideLeftWidget({Key? key}) : super(key: key);

  @override
  State<HomeSideLeftWidget> createState() => _HomeSideLeftWidgetState();
}

class _HomeSideLeftWidgetState extends State<HomeSideLeftWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 80,
      height: MediaQuery.of(context).size.height,
      color: homeSideleftColor,
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child:Column(
        children: [
          const Center(
            child:  Icon(
              Icons.menu,
              color:Colors.white,
              size:30,
            ) ,
          ),
          SizedBox(height:80,),
          MenuSideLeftWidget(iconsData:Icons.message,isTagged: true),
          SizedBox(height:10,),
          MenuSideLeftWidget(iconsData:Icons.notifications_active_outlined,isTagged: false),
          SizedBox(height:10,),
          MenuSideLeftWidget(iconsData:Icons.delete,isTagged: false),
          SizedBox(height:10,),
          MenuSideLeftWidget(iconsData:Icons.person,isTagged: false),
          Container(
            height: MediaQuery.of(context).size.height-420,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                    ],
                  ),
                ) ,
                Center(
                  child:  Container(
                    child: FloatingActionButton(
                      onPressed: (){},
                      child:Icon(Icons.add, color: Colors.white,),
                      mini: true,
                    ),
                  ),
                )
              ],
            )

          ),
        ],
      ),
    );

  }
}
