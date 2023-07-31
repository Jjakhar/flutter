import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int x = 2;
    String name = "Jaiyant Jakhar";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my $x nd  app, made by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

void main() {}
