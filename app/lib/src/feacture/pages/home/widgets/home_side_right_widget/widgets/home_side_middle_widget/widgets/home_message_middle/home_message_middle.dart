import 'package:flutter/material.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_side_right_widget/widgets/home_side_middle_widget/widgets/home_message_middle/widgets/message_emissor_widget.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_side_right_widget/widgets/home_side_middle_widget/widgets/home_message_middle/widgets/message_receptor_widget.dart';


class HomeMessageMiddle extends StatefulWidget {
  const HomeMessageMiddle({Key? key}) : super(key: key);

  @override
  State<HomeMessageMiddle> createState() => _HomeMessageMiddleState();
}

class _HomeMessageMiddleState extends State<HomeMessageMiddle> {
  @override
  Widget build(BuildContext context) {
    Size  _deviceSize =MediaQuery.of(context).size;
    return Container(
      width: _deviceSize.width,
      height:_deviceSize.height,
      padding: EdgeInsets.only(
        left: 50,
        right: 50 ,
        top: 10
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MessageEmissorWidget() ,
            Row(
              crossAxisAlignment:CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MessageReceptorWidget()
              ],
            ),
          ],
      ),
    );
  }
}


