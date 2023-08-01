import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  // const ItemWidget({super.key});

  final Item curr_item;

  const ItemWidget({super.key, required this.curr_item});
//
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${curr_item.name} pressed");
        },
        leading: Image.network(curr_item.image),
        title: Text(curr_item.name),
        subtitle: Text(curr_item.desc),
        trailing: Text(
          textScaleFactor: 1.3,
          "\$${curr_item.price}",
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
