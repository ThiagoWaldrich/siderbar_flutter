import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(  
        "Accounts",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}