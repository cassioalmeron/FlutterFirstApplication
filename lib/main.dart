import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tapped = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 100,
          color: Colors.black,
          child: Center(
              child: Text(
            "AppBar",
            style: TextStyle(
                color: Colors.amber, fontSize: 28, fontWeight: FontWeight.bold),
          )),
        ),
        preferredSize: Size.fromHeight(100),
      ),
      body: Container(
        color: Color(0xFF336699),
        child: Center(
          child: GestureDetector(
            onTap: () {
              //print("Foi Clicado!");
              tapped = !tapped;
              setState(() {});
            },
            child: Container(
              height: 200,
              width: 200,
              child: Center(
                  child: Text("Body",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 36,
                          fontWeight: FontWeight.bold))),
              decoration: BoxDecoration(
                  color: tapped ? Colors.green : Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Colors.red, width: 10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.green, spreadRadius: 0.5, blurRadius: 20)
                  ]),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.green,
        child: Center(
            child: Text("Bottom",
                style: TextStyle(color: Colors.white, fontSize: 30))),
      ),
    );
  }
}
