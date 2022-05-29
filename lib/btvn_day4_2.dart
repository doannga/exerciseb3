import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexDemo extends StatefulWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  State<FlexDemo> createState() => _FlexDemoState();
}

class _FlexDemoState extends State<FlexDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('FlexDemo - CodeFresher'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        'assets/images/image1.PNG',
                        fit: BoxFit.cover,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Lập trình Flutter',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Thực chiến dự án app mobile 2022',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.green,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Lập trình Android',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 24,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Java + Kotlin',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'assets/images/image2.PNG',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.green,
                thickness: 2,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      'assets/images/image3.PNG',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        children: const [
                          Text(
                            'Lập trình Java cơ bản',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 26,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Cho người mới bắt đầu',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
