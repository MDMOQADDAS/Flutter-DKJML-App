import 'package:flutter/material.dart';
import 'package:mtalk/UI/appbar.dart';
import 'package:http/http.dart' as http;

class shellresult extends StatefulWidget {
  @override
  _shellresultState createState() => _shellresultState();
}

class _shellresultState extends State<shellresult> {
  var URL_input;
  var URL;
  var ip;

  var app_name;
  var cmd;
  var resultbody = "Output Area ...";
  url_taker() {
    URL = URL_input;
    //storing IP Address
    var ip_part1 = URL.split("//");
    var ip_part2 = ip_part1[1].split("/");
    ip = ip_part2[0];
    //storing app name
    app_name = ip_part2[2];
    setState(() {
      ip;
      app_name;
    });
  }

  web() async {
    //var result = Uri.http("192.168.8.163", "/cgi-bin/app.py", {"x": cmd});
    var result = Uri.http(ip, "/cgi-bin/$app_name", {"x": cmd});

    var finalResult = await http.get(result);
    setState(() {
      resultbody = finalResult.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(tittle: Text("check")),
      body: Column(
        children: [
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter URL of your Server...",
              ),
              onChanged: (value) {
                URL_input = value;
              },
              autofocus: true,
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: TextButton(
              onPressed: url_taker,
              child: Text(
                "Submit",
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Your Shell Command Here...",
              ),
              onChanged: (value) {
                cmd = value;
              },
            ),
          ),
          TextButton(
              onPressed: web,
              child: Text(
                "Run",
                style: TextStyle(fontSize: 21),
              )),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.03),
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)
                ),
              ),
              child: ListView(
                children: [ Text(
                  "$resultbody",
                  style: TextStyle(color: Colors.white,
                  fontSize: 18),
                ),
                ],
              ),
                
            ),
          ),
        ],
      ),
    );
  }
}
