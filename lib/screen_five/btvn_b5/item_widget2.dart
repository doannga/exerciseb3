import 'package:flutter/material.dart';

class ItemWidget2 extends StatefulWidget {
  ItemWidget2(
      {Key? key,
      required this.itemImage,
      required this.itemName,
      required this.itemPrice,
      required this.itemSubTotal,
      required this.itemShipsFree})
      : super(key: key);

  String itemImage;
  String itemName;
  int itemPrice;
  int itemSubTotal;
  int itemShipsFree;

  @override
  State<ItemWidget2> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: NetworkImage(widget.itemImage),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),

            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            widget.itemName,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Price:   ',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                              text: '\$${widget.itemPrice}',
                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ))
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Sub Total:   ',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                            text: '\$${widget.itemSubTotal}',
                            style: const TextStyle(
                              fontSize: 24,
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Ships Free',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            if (widget.itemShipsFree > 0) {
                              widget.itemShipsFree--;
                            }
                            setState(() {});
                          },
                          icon: const Icon(Icons.remove, color: Colors.red),
                        ),
                        Material(
                          elevation: 2,
                          borderRadius: BorderRadius.circular(5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${widget.itemShipsFree}',
                              style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            widget.itemShipsFree++;
                            setState(() {});
                          },
                          icon: const Icon(Icons.add, color: Colors.green),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              child: Image.network(
                widget.itemImage,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
