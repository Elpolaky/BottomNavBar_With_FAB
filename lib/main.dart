import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar & FAB',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _tap = 0;
  void _numTap() {
    setState(() {
      _tap = _tap + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Bottom Navigation Bar with FAB',
          style: TextStyle(fontSize: 20, color: Colors.blueGrey.shade500),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white60,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.blueGrey.shade700,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey.shade700,
        shape: CircularNotchedRectangle(),
        notchMargin: 13,
        child: Container(
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 70,
                onPressed: _numTap,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'this',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 70,
                onPressed: _numTap,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.api_sharp),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'is',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 42,
                  ),
                  Text('A'),
                ],
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: _numTap,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_road_rounded),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Bottom',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: _numTap,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.workspaces_filled),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Bar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Taps : $_tap',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
