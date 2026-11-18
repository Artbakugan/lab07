import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _topLeft = 0.0;
  double _topRight = 0.0;
  double _bottomLeft = 0.0;
  double _bottomRight = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_topLeft),
                  topRight: Radius.circular(_topRight),
                  bottomLeft: Radius.circular(_bottomLeft),
                  bottomRight: Radius.circular(_bottomRight),
                ),
              ),
            ),
            const SizedBox(height: 48),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('TL: ${_topLeft.toStringAsFixed(2)}'),
                      Slider(
                        value: _topLeft,
                        min: 0,
                        max: 75,
                        onChanged: (value) {
                          setState(() {
                            _topLeft = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('TR: ${_topRight.toStringAsFixed(2)}'),
                      Slider(
                        value: _topRight,
                        min: 0,
                        max: 75,
                        onChanged: (value) {
                          setState(() {
                            _topRight = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('BL: ${_bottomLeft.toStringAsFixed(2)}'),
                      Slider(
                        value: _bottomLeft,
                        min: 0,
                        max: 75,
                        onChanged: (value) {
                          setState(() {
                            _bottomLeft = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('BR: ${_bottomRight.toStringAsFixed(2)}'),
                      Slider(
                        value: _bottomRight,
                        min: 0,
                        max: 75,
                        onChanged: (value) {
                          setState(() {
                            _bottomRight = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}