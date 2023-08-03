import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const homepage({super.key});
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJson);
    var decodedData = jsonDecode(catalogJson);
    // print(decodedData);
    var proudctsData = decodedData["products"];
    // print(proudctsData);

    CatalogModel.items = List.from(proudctsData)
        .map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // int x = 1;
    // String name = "Jaiyant Jakhar";
    // final dummyList = List.generate(15, (index) => CatalogModel.items[0]);

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
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                // itemCount: CatalogModel.items.length,
                // itemCount: dummyList.length,
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    // curr_item: CatalogModel.items[index],
                    // curr_item: dummyList[index],
                    curr_item: CatalogModel.items[index],
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      // drawer: Drawer(),
      drawer: MyDrawer(),
    );
  }
}

void main() {}
