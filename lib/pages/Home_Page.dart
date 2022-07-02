import 'dart:convert';
import 'package:application/models/catalog.dart';
import 'package:application/widgets/Item_Wigets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int day = 30;
  String name = "Praveen Mehta";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogjson);
    var productData = decodedData["products"];
    CatalogModles.items = List.from(productData)
    .map<Item>((item) => Item.fromMap(item))
    .toList();    
    setState(() {});
  }

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
        child: CatalogModles.items !=null && CatalogModles.items.isNotEmpty ? ListView.builder(
          itemCount: CatalogModles.items.length,
          itemBuilder: (context, index) {
            return ItemWidgets(
              item: CatalogModles.items[index],
            );
          },
        ) : Center(
          child: CircularProgressIndicator(),
        ) ,
      ),
    );
  }
}
