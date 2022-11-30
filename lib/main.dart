import 'package:devfestui/dev_scaffold.dart';
import 'package:devfestui/screen_1.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const DevFestApp());
}

class DevFestApp extends StatelessWidget {
  const DevFestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DevFestScaffold(
        body: SizedBox(
          child: SingleChildScrollView(
            child: Screen1(),
          ),
        ),
      ),
    );
  }
}
