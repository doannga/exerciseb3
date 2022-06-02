import 'package:flutter/material.dart';

import 'item.dart';
import 'item_widget.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    final lstItems = [
      Item(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          'Item 10',
          200,
          400,
          100),
      Item(
          'https://picsum.photos/250?image=9',
          'Item 111111111111111111111111111111111111111111111111111',
          200,
          400,
          0),
      Item('https://picsum.photos/250?image=9', 'Item 12', 200, 400, 0),
      Item('https://picsum.photos/250?image=9', 'Item 13', 200, 400, 0),
      Item('https://picsum.photos/250?image=9', 'Item 14', 200, 400, 0),
      Item('https://picsum.photos/250?image=9', 'Item 15', 200, 400, 0),
      Item('https://picsum.photos/250?image=9', 'Item 16', 200, 400, 0),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('My Cart'),
      ),
      body: Column(children: [
        Flexible(
          child: ListView.builder(
              itemCount: lstItems.length,
              itemBuilder: (context, index) {
                var item = lstItems[index];
                return ItemWidget(
                  itemImage: item.itemImage,
                  itemName: item.itemName,
                  itemPrice: item.itemPrice,
                  itemSubTotal: item.itemSubTotal,
                  itemShipsFree: item.itemShipsFree,
                );
              }),
        ),
        Container(
          color: Colors.black12,
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Text(
                      'Checkout Price:',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      'Rs. 5000',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Material(
                  elevation: 1,
                  color: Colors.red,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Checkout',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}