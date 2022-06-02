import 'package:flutter/material.dart';

class DishItemWidget extends StatelessWidget {
  const DishItemWidget(
      {Key? key,
      required this.dishIcon,
      required this.dishName,
      required this.dishPrice})
      : super(key: key);

  final IconData dishIcon;
  final String dishName;
  final double dishPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          dishIcon,
          size: 64,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              '$dishName',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '\$$dishPrice',
              style: const TextStyle(fontSize: 15, color: Colors.blueGrey),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: const Icon(
            Icons.add,
          ),
        )
      ],
    );
  }
}
