import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login img.png",
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10,
            // child: Container(
            //   color: Colors.black,
            // )
          ),
          Text(
            "Welcome To LOG IN Page",
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "User Name",
                      hintText: "Enter Your User Name "),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Your User Password ",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: (() {
                      print("Button got clicked");
                    }),
                    child: Text("Login"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
