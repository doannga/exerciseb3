import 'package:flutter/material.dart';

import 'dish.dart';
import 'dish_item_widget.dart';

class ScreenFive extends StatelessWidget {
  const ScreenFive({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dishList = [
      Dish(Icons.person, 'Potato', 25.85),
      Dish(Icons.stream, 'Stream', 26.85),
      Dish(Icons.watch, 'Watch', 25.95),
      Dish(Icons.person, 'Potato', 30.85),
      Dish(Icons.person, 'Potato', 49.85),
      Dish(Icons.person, 'Potato', 19.85),
      Dish(Icons.person, 'Potato', 20.85),
      Dish(Icons.person, 'Potato', 100.85),
      Dish(Icons.person, 'Potato', 25.00),
      Dish(Icons.person, 'Potato', 24.05),
    ];
    return Scaffold(
      body: ListView.builder(
          itemCount: dishList.length,
          itemBuilder: (context, int index) {
            var dish = dishList[index];
            return DishItemWidget(
              dishIcon: dish.dishIcon,
              dishName: dish.dishName,
              dishPrice: dish.dishPrice,
            );
          }),
    );
  }
}
