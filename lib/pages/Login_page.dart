import 'package:application/utils/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _name = "";
  bool _animatedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
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
              
              "Welcome $_name",
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
                        onChanged: (value){
                          _name = value;
                          setState(() {
                            
                          });
                        },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Your User Password ",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular( _animatedButton ? 45 : 10),
                    
                    child: InkWell (
                      
                      onTap: () async {
                        setState(() {
                          _animatedButton = true ;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        await Navigator.pushNamed(context, Myroute.homeRoute);
                        setState(() {
                          _animatedButton = false;
                        });
                      },
                      
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 45,
                        width: _animatedButton ? 45 : 150,
                        alignment: Alignment.center,                    
                        child: _animatedButton ? Icon(Icons.done, color: Colors.white, ) : Text("Login", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),                        
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //     onPressed: (() {
                  //       Navigator.pushNamed(context, Myroute.homeRoute);
                  //     }),
                  //     child: Text("Login",
                  //     style: TextStyle(fontSize: 30, color: Colors.white),
                  //     ),
                  //     style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                  //   )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
