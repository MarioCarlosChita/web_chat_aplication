import 'package:flutter/material.dart';
import 'package:web_application/src/core/constants/theme_app.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_side_right_widget/widgets/home_side_middle_widget/home_side_middle_widget.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_side_right_widget/widgets/home_side_top_widget.dart';

class HomeSideRightWidget extends StatefulWidget {
  const HomeSideRightWidget({Key? key}) : super(key: key);

  @override
  State<HomeSideRightWidget> createState() => _HomeSideRightState();
}

class _HomeSideRightState extends State<HomeSideRightWidget> {
  @override
  Widget build(BuildContext context) {
    Size  _mediaSizeDevice =  MediaQuery.of(context).size;
    return Container(
      color: homeSideRightColor,
      child:Column(
          children: [
            HomeSideTopWidget(),
            HomeMiddleTopWidget()
          ],
      ),
    );
  }
}
