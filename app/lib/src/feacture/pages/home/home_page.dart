import 'package:flutter/material.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_friends_list_widget/home_friends_list.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_side_left_widget/home_side_left_widget.dart';
import 'package:web_application/src/feacture/pages/home/widgets/home_side_right_widget/home_side_right_widget.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    Size _mediaScreenSize =MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          HomeSideLeftWidget(),
          HomeFriendsList(),
          Expanded(child:HomeSideRightWidget()),
        ],
      ),
    );
  }
}
