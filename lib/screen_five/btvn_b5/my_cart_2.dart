import 'package:flutter/material.dart';
import 'package:simple_calculator_b3/screen_five/btvn_b5/item_widget2.dart';

import 'item.dart';
import 'item_widget.dart';

class MyCard2 extends StatefulWidget {
  const MyCard2({Key? key}) : super(key: key);

  @override
  State<MyCard2> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard2> {
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
      body: ListView.builder(
          itemCount: lstItems.length,
          itemBuilder: (context, index) {
            var item = lstItems[index];
            if (index % 2 != 0) {
              return ItemWidget2(
                itemImage: item.itemImage,
                itemName: item.itemName,
                itemPrice: item.itemPrice,
                itemSubTotal: item.itemSubTotal,
                itemShipsFree: item.itemShipsFree,
              );
            } else {
              return ItemWidget(
                itemImage: item.itemImage,
                itemName: item.itemName,
                itemPrice: item.itemPrice,
                itemSubTotal: item.itemSubTotal,
                itemShipsFree: item.itemShipsFree,
              );
            }
          }),
    );
  }
}
