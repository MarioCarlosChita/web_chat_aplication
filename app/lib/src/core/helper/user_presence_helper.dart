

import 'package:flutter/material.dart';
import '../../feacture/enums/user_presence.dart';

Color  getUserPresence(userPresence  item){
  switch(item){
    case  userPresence.ACTIVE:
      return Colors.lightGreen;

    case  userPresence.AUSENT:
      return  Colors.orange;

    case userPresence.ONLINE:
      return Colors.green;

    case  userPresence.MEETING:
      return Colors.red;

    default:
      return Colors.grey;
  }
}