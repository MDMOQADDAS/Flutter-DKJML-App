import 'package:flutter/material.dart';
import 'package:mtalk/UI/Binary_Classfication.dart';
import 'package:mtalk/UI/Jenkins.dart';
import 'package:mtalk/UI/K8s.dart';
import 'package:mtalk/UI/Linear_Regression.dart';
import 'package:mtalk/UI/docker.dart';
import 'package:mtalk/UI/mshell.dart';

class main_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
        ),
        child: ListView(
          children: [
            mshell(),
            Docker(),
            k8s(),
            Jenkins(),
            LR(),
            Binary_Classfication(),
          ],
        ),
      ),
    );
  }
}
