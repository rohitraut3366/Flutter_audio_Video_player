import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade900,
        title: Text("Player"),
        leading: Image.asset("assets/Images/video.jpg"),
        actions: [],
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.amber,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/audioaaset");
                },
                textColor: Colors.white,
                padding: EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.green, Colors.brown]),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child:
                      const Text('    Audio Asset    ', style: TextStyle(fontSize: 20)),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/audioNet");
                },
                textColor: Colors.white,
                padding: EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.green, Colors.brown]),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child:
                      const Text('  Audio Network  ', style: TextStyle(fontSize: 20)),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/videoasset");
                },
                textColor: Colors.white,
                padding: EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.green, Colors.brown]),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child:
                      const Text('   Video   Assets  ', style: TextStyle(fontSize: 20)),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/videonet");
                },
                textColor: Colors.white,
                padding: EdgeInsets.all(0.0),
                child: Container(
                
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.green, Colors.brown]),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child:
                      const Text('  Video Network  ', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
