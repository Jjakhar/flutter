import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class loginpage extends StatelessWidget {
  // const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
            // child: Text("aghd"),
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    child: Text("Login"),
                    onPressed: () {
                      // print("Hi Jaiyant Jakhar");
                      Navigator.pushNamed(context, myroutes.homeroute);
                    },
                    style: TextButton.styleFrom(minimumSize: Size(100, 35))),
              ],
            ),
          )
        ]),
      ),

      // child: Center(
      //   child: Text(
      //     "Login Page",
      //     style: TextStyle(
      //       fontSize: 30,
      //       color: Colors.blue,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }
}

void main() {}
