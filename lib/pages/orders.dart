import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
        ),
    );
  }
}