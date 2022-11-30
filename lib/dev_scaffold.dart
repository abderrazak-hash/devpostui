import 'package:devfestui/utils.dart';
import 'package:flutter/material.dart';

class DevFestScaffold extends StatelessWidget {
  final Widget body;
  const DevFestScaffold({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              bottom: 140.0, left: 10.0, child: Image.asset(getImage('Star'))),
          Positioned(
              top: 100.0,
              left: 5.0,
              child: Image.asset(getImage('Maqam_el_chahid'))),
          Positioned(
              top: 100.0, right: 3.0, child: Image.asset(getImage('Lampe'))),
          Expanded(child: body),
        ],
      ),
    );
  }
}
