import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // const MyDrawer({super.key});
//
  @override
  Widget build(BuildContext context) {
    final imageURL =
        "https://cdn-icons-png.flaticon.com/512/847/847969.png?w=740&t=st=1690891935~exp=1690892535~hmac=944a99752a18b4813e46d60c11b6cc65d0f2c93265eef83cc190c021c1bcd000";
    return Drawer(
        child: Container(
      color: Colors.blue,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Jaiyant Jakhar"),
                accountEmail: Text("jaiyant2.0@gmail.com"),
                // currentAccountPicture: Image.network(imageURL),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white),
            title: Text(
              "Email",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          )
        ],
      ),
    ));
  }
}
