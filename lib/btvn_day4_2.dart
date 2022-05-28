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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        'assets/images/image1.PNG',
                        //height: 200,
                        //alignment: Alignment.centerLeft,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Lập trình Flutter',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 26,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Thực chiến dự án app mobile 2022',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.green,
                thickness: 2,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Lập trình Android',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 26,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Java + Kotlin',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'assets/images/image2.PNG',
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.green,
                thickness: 2,
              ),
              Container(
                //padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Image.asset(
                        'assets/images/image3.PNG',
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.center,
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
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
