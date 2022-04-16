import 'package:flutter/material.dart';
import 'package:sidebar_flutter/pages/home_page.dart';
import 'package:sidebar_flutter/sidebar/sidebar.dart';

class SideBarLayout extends StatelessWidget {
  const SideBarLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HomePage(),
          SideBar(),
        ],
      ),
    );
  }
}
