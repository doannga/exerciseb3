import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.add),
                  title: Text('Category'),
                  subtitle: Text('Type'),
                  trailing: Icon(Icons.remove_circle),
                ),
            //SeparatorBuilder thêm widget gì vào cũng được
            separatorBuilder: (context, index) => DottedLine(),
            // const Divider(),

            itemCount: 100));
    // ListView.builder(
    //   itemCount: 50,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    //       color: Colors.orange,
    //       height: 50,
    //       child: Text('Item $index'),
    //     );
    //   },
    // ),
    //);
  }
}
