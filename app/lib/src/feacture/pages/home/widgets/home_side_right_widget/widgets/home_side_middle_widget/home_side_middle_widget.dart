import 'package:flutter/material.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_side_right_widget/widgets/home_side_middle_widget/widgets/home_input_middle.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_side_right_widget/widgets/home_side_middle_widget/widgets/home_message_middle/home_message_middle.dart';

class HomeMiddleTopWidget extends StatefulWidget {
  const HomeMiddleTopWidget({Key? key}) : super(key: key);

  @override
  State<HomeMiddleTopWidget> createState() => _HomeMiddleTopWidgetState();
}

class _HomeMiddleTopWidgetState extends State<HomeMiddleTopWidget> {
  @override
  Widget build(BuildContext context) {
    Size _mediaDevice = MediaQuery.of(context).size;

    return Container(
      width: _mediaDevice.width,
      height: _mediaDevice.height - 60,
      child: Stack(
        children: [
          HomeMessageMiddle(),
          Align(
            alignment: Alignment.bottomCenter,
            child: HomeInputMiddle(),
          ),
        ],
      ),
    );
  }
}
