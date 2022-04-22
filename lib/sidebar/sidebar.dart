import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin<SideBar> {
  late AnimationController _animationController; //late mofied
  StreamController<bool> side_bar_open_stream_controller;
  final bool side_bar_open = false;
  final _animation_duration = const Duration(milliseconds: 500);
  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(vsync: this, duration: _animation_duration);
  }
  @override
  void dispose(){
    _animationController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {

    final screen_width = MediaQuery.of(context).size.width;

    return AnimatedPositioned(
      duration: _animation_duration,
      top: 0,
      bottom: 0,
      left: side_bar_open ? 0 : 0,
      right: side_bar_open ? 0 : screen_width - 45, 
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
            alignment: Alignment.centerLeft,
            child: AnimatedIcon(progress: _animationController.view,
            icon: AnimatedIcons.menu_close,
            color: Color(0xFF1BB5FD),
            size:25)
          ),
        ),
      ],
    ));
  }
}
