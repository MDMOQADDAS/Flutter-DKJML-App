import 'package:flutter/material.dart';
import 'package:mtalk/UI/appbar.dart';
import 'package:mtalk/UI/main_body.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mtalk(),
    ),
  );
}

class mtalk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          main_body(),
        ],
      ),
    );
  }
}
