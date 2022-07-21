import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DicePage());
}

// class DicePage extends StatelessWidget {
//   const DicePage({Key? key}) : super(key: key);

//   // This widget is the root of your application.

// }

class DicePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

  @override
  State<DicePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DicePage> {
  num randl = 1;
  num randr = 1;
  num randu = 1;
  num randb = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 41, 68, 65),
        appBar: AppBar(
          title: Text(
            'Dice Rolling Page',
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 26, 32, 32),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: new FlatButton(
                        onPressed: () {
                          setState(() {
                            randl = Random().nextInt(6) + 1;
                          });
                          print('blaaa1');
                        },
                        child:
                            Image(image: AssetImage('images/dice$randl.png')),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            randr = Random().nextInt(6) + 1;
                          });
                          print('blaaa2');
                        },
                        child: Image.asset('images/dice$randr.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
