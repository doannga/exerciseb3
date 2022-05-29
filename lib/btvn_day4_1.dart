import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  bool _validate() {
    isValidate1 = false;
    isValidate2 = false;
    if (number1Ctl.text.isEmpty || number1Ctl.text.length > 10) {
      isValidate1 = true;
      setState(() {});
    }
    if (number2Ctl.text.isEmpty || number2Ctl.text.length > 10) {
      isValidate2 = true;
      setState(() {});
    }
    return isValidate1 || isValidate2;
  }

  void add() {
    if (!_validate()) {
      result = double.parse(number1Ctl.text) + double.parse(number2Ctl.text);
      setState(() {});
    }
  }

  void minus() {
    if (!_validate()) {
      result = double.parse(number1Ctl.text) - double.parse(number2Ctl.text);
      setState(() {});
    }
  }

  void multiplication() {
    if (!_validate()) {
      setState(() {
        result = double.parse(number1Ctl.text) * double.parse(number2Ctl.text);
      });
    }
  }

  void divide() {
    if (!_validate()) {
      setState(() {
        if (double.parse(number2Ctl.text) != 0) {
          result =
              (double.parse(number1Ctl.text) / double.parse(number2Ctl.text));
        } else {
          showDialog(
              context: context,
              builder: (context) {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 150,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/calculator-1470.png'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                // Show A numerical keyboard when tapping on textfield
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                // Show done button on keyboard
                textInputAction: TextInputAction.done,
                // auto focus to textfield
                autofocus: true,
                // maxLength: 10,
                decoration: InputDecoration(
                  hintText: 'Nhập số A',
                  // border: const OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.lightBlue)),
                  errorText:
                      isValidate1 ? 'Please enter a valid number1' : null,
                ),
                inputFormatters: <TextInputFormatter>[
                  //FilteringTextInputFormatter.digitsOnly,
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
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                textInputAction: TextInputAction.done,
                autofocus: true,
                //maxLength: 10,
                decoration: InputDecoration(
                  hintText: 'Nhập số B',
                  // border: const OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.lightBlue),
                  // ),
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
              height: 10,
            ),
            Text(
              'Kết quả ${result.toInt()}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 80,
                    child:
                        ElevatedButton(onPressed: add, child: const Text('+'))),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                    onPressed: minus,
                    child: const Text('-'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                    onPressed: multiplication,
                    child: const Text('*'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                    onPressed: divide,
                    child: const Text('/'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
