import 'package:flutter/material.dart';
import 'package:web_application/src/core/constants/theme_app.dart';

class MenuSideLeftWidget extends StatefulWidget {
  bool isTagged  = false;
  IconData iconsData;
  MenuSideLeftWidget({
    Key? key ,
    required this.isTagged,
    required this.iconsData
  }) : super(key: key);

  @override
  State<MenuSideLeftWidget> createState() => _MenuSideLeftWidgetState();
}

class _MenuSideLeftWidgetState extends State<MenuSideLeftWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:80,
      height:60,
      child:Icon(widget.iconsData,color:widget.isTagged ? Colors.white:Colors.grey),
      color:widget.isTagged ? Colors.blue :homeSideleftColor,
    );
  }
}
