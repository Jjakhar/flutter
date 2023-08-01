import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  // const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    // int x = 1;
    // String name = "Jaiyant Jakhar";
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // itemCount: CatalogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                // curr_item: CatalogModel.items[index],
                curr_item: dummyList[index],
              );
            }),
      ),
      // drawer: Drawer(),
      drawer: MyDrawer(),
    );
  }
}

void main() {}
