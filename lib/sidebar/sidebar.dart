import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  final bool side_bar_open = false;
  @override
  Widget build(BuildContext context) {

    final scree_width = MediaQuery.of(context).size.width;
    return Positioned(
      top: 0,
      bottom: 0,
      left: side_bar_open ? 0 : 0,
      right: side_bar_open ? 0 : scree_width - 45, 
        child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Color(0xFF262AAA),
          ),
        ),
        Align(
          alignment: Alignment(0, -0.9),
          child: Container(
            width: 35,
            height: 110,
            color: Color(0xFF262AAA),
          ),
        ),
      ],
    ));
  }
}
