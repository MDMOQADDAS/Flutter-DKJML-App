import 'package:flutter/material.dart';
import 'package:mtalk/Kubernetes/k8s_page.dart';

class k8s extends StatelessWidget {
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
            MaterialPageRoute(builder: (context) => k8sshell()));
          },
          child: Center(
            child: Text(
              "Kubernetes",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
