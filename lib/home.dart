import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';
import 'dart:io';

class LinuxTerminal extends StatefulWidget {
  @override
  _LinuxTerminalState createState() => _LinuxTerminalState();
}

class _LinuxTerminalState extends State<LinuxTerminal> {
  var cmd;

  webfn(cmd) async {
    var url = "http://13.232.85.181/cgi-bin/web.py?x=${cmd}";
    var response = await http.get(url);
    print(response.body);
  }

  Widget body() {
    return Container(
        child: Row(
      children: [
        Container(
          child: Text(
            "user@localhost:~\$",
            style:
                GoogleFonts.ubuntuMono(color: Colors.greenAccent, fontSize: 20),
          ),
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: TextField(
            onChanged: (command) => cmd = command,
            enabled: true,
            decoration: InputDecoration(
              hintText: "Enter the command",
              //border:OutlineInputBorder(borderRadius: BorderRadius.vertical())),
            ),
          ),
        ),
      ],
    ));
  }

  //mydata() ass

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox.fromSize(
        size: Size(56, 56), // button width and height
        child: ClipOval(
          child: Material(
            color: Colors.white, // button color
            child: InkWell(
              splashColor: Colors.green, // splash color
              onTap: () => webfn(cmd), // button pressed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.last_page,
                    color: Colors.black,
                  ), // icon
                  Text(
                    "Run",
                    style: GoogleFonts.ubuntuMono(color: Colors.black),
                  ), // text
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        //centerTitle: true,
        title: Text(
          "Terminal",
          //textAlign: TextAlign.left,
          style: GoogleFonts.ubuntuMono(
            fontSize: 30,
            //letterSpacing: 10,
          ),
        ),
        leading: Icon(Icons.code),
        actions: [
          FlatButton(
            onPressed: () => Toast.show(
                "Enter the Linux Terminal Command. For eg. date, cal, etc.",
                context,
                duration: 5),
            child: Icon(Icons.help_sharp),
          )
        ],
      ),
      body: body(),
    );
  }
}
