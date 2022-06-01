import 'package:flutter/material.dart';

class DayFour extends StatefulWidget {
  const DayFour({Key? key}) : super(key: key);

  @override
  State<DayFour> createState() => _DayFourState();
}

class _DayFourState extends State<DayFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Try to add image'),
            Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              scale: 0.3,
              height: 200,
              width: 300,
            ),
            Image.asset(
              'assets/images/img_5terre.jpg',
              scale: 0.5,
              height: 200,
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
