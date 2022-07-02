import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String imageURL =
        "https://imgs.search.brave.com/uxhlfipbmCVCOXNm2xfLjdyBfdvIzPx6o5uUU8QYbcc/rs:fit:900:900:1/g:ce/aHR0cHM6Ly95dDMu/Z2dwaHQuY29tL2Ev/QUFUWEFKd3gtX1pu/WmRETk1NWmM4RWhG/ZE9zamNQa1ZJZ2o4/OU5LOENRPXM5MDAt/Yy1rLWMweGZmZmZm/ZmZmLW5vLXJqLW1v";
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0), // Padding for Header box
                child: UserAccountsDrawerHeader(
                  // margin: EdgeInsets.all(0),  // Margin for account details
                  accountName: Text("Praveen Mehta"),
                  accountEmail: Text("pkmehta08032002@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageURL)),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5, // increas the size of text
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Setting",
                textScaleFactor: 1.5,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text("Contact Us",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
