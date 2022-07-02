import 'package:application/models/catalog.dart';
import 'package:application/widgets/Item_Wigets.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int day = 30;
  String name = "Praveen Mehta";
  // final dumylist = List.generate(30, (index) => CatalogModles.items[0],); // Just to see a dummy list of products
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog",
        ),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: CatalogModles.items.length,
          itemBuilder: (context, index) {
            return ItemWidgets(
              item: CatalogModles.items[index],
            );
          },
        ),
      ),
    );
  }
}
