import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  // const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int x = 1;
    String name = "Jaiyant Jakhar";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my $x st  app, made by $name"),
        ),
      ),
      // drawer: Drawer(),
      drawer: MyDrawer(),
    );
  }
}

void main() {}
