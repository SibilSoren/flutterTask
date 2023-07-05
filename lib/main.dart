import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Gradient'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: Container(
        color: Colors.black,
        child: Image.asset(
          "assets/BG1.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondRoute()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Second Route'),
      // ),
      body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/BG2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
                child: new Container(
                  decoration:
                      new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                )),
            decoration: BoxDecoration(
              // color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/Render.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
