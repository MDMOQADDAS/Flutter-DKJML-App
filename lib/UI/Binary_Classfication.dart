import 'package:flutter/material.dart';

class Binary_Classfication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03,
        bottom: MediaQuery.of(context).size.height *0.03,
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            shadowColor: MaterialStateProperty.all(Colors.redAccent),
            padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
          ),
          onPressed: () {
            print("click");
          },
          child: Center(
            child: Text(
              "Binary_Classfication",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
