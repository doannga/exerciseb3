import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController number1Ctl = TextEditingController();
  TextEditingController number2Ctl = TextEditingController();
  bool isValidate1 = false;
  bool isValidate2 = false;
  double result = 0;

  void add() {
    if (number1Ctl.text.isEmpty || number1Ctl.text.length > 10) {
      setState(() {
        isValidate1 = true;
      });
    }
    if (number2Ctl.text.isEmpty || number2Ctl.text.length > 10) {
      setState(() {
        isValidate2 = true;
      });
    } else if (number1Ctl.text.isNotEmpty && number2Ctl.text.isNotEmpty) {
      setState(() {
        isValidate1 = false;
        isValidate2 = false;
        result = double.parse(number1Ctl.text) + double.parse(number2Ctl.text);
      });
    }
  }

  void minus() {
    if (number1Ctl.text.isEmpty) {
      setState(() {
        isValidate1 = true;
      });
    }
    if (number2Ctl.text.isEmpty) {
      setState(() {
        isValidate2 = true;
      });
    } else if (number1Ctl.text.isNotEmpty && number2Ctl.text.isNotEmpty) {
      setState(() {
        isValidate1 = false;
        isValidate2 = false;
        result = double.parse(number1Ctl.text) - double.parse(number2Ctl.text);
      });
    }
  }

  void multiplication() {
    if (number1Ctl.text.isEmpty) {
      print('thuynga.dt: Loi o day ${number1Ctl.text}');
      setState(() {
        isValidate1 = true;
      });
    }
    if (number2Ctl.text.isEmpty) {
      setState(() {
        isValidate2 = true;
      });
    } else if (number1Ctl.text.isNotEmpty && number2Ctl.text.isNotEmpty) {
      setState(() {
        isValidate1 = false;
        isValidate2 = false;
        result = double.parse(number1Ctl.text) * double.parse(number2Ctl.text);
      });
    }
  }

  void divide() {
    if (number1Ctl.text.isEmpty) {
      setState(() {
        isValidate1 = true;
      });
    }
    if (number2Ctl.text.isEmpty) {
      setState(() {
        isValidate2 = true;
      });
    } else if (number1Ctl.text.isNotEmpty && number2Ctl.text.isNotEmpty) {
      setState(() {
        isValidate1 = false;
        isValidate2 = false;
        if (double.parse(number2Ctl.text) != 0) {
          result =
              double.parse(number1Ctl.text) / double.parse(number2Ctl.text);
        } else {
          showDialog(
              context: context,
              builder: (context) {
                // return const SimpleDialog(
                //   title: Text('Please input number 2 other than 0!'),
                // );
                return AlertDialog(
                  title: const Text("Error"),
                  content: const Text("Please input number 2 other than 0!"),
                  actions: [
                    TextButton(
                      child: const Text("OK"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                );
              });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              child: TextField(
                // Show A numerical keyboard when tapping on textfield
                keyboardType: TextInputType.numberWithOptions(),
                // Show done button on keyboard
                textInputAction: TextInputAction.done,
                // auto focus to textfield
                autofocus: true,

                //maxLength: 10,

                // decoration: InputDecoration(
                //   border: const OutlineInputBorder(),
                //   // labelText: 'Number 1: ',
                //   errorText: isValidate1 ? 'Please enter a valid number1' : null,
                // ),
                decoration: InputDecoration(
                  hintText: 'Number 1',
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue)),
                  errorText:
                      isValidate1 ? 'Please enter a valid number1' : null,
                ),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                //Easy way: get Text from textfield
                // onChanged: (text) {
                //   number1 = double.parse(text);
                // },
                controller: number1Ctl,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                autofocus: true,
                //maxLength: 10,
                decoration: InputDecoration(
                  hintText: 'Number 2',
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange)),
                  errorText:
                      isValidate2 ? 'Please enter a valid number2' : null,
                ),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                ],
                controller: number2Ctl,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('The result: $result'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: add, child: const Text('+')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: minus, child: const Text('-')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: multiplication, child: const Text('*')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: divide, child: const Text('/')),
          ],
        ),
      ),
    );
  }
}
