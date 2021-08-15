import 'package:flutter/material.dart';
import 'package:mtalk/docker/docker.dart';

class Docker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
        child: ElevatedButton(
          style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(Colors.redAccent),
            padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
          ),
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => dockershell())
            );
          },
          child: Center(
            child: Text(
              "Docker",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
