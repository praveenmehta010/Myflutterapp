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
    CatalogModles.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
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
        child: CatalogModles.items != null && CatalogModles.items.isNotEmpty
            // ListView.builder(
            //   itemCount: CatalogModles.items.length,
            //   itemBuilder: (context, index) {
            //     return ItemWidgets(
            //       item: CatalogModles.items[index],
            //     );
            //   },
            // )
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModles.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.black,
                    child: GridTile(
                      header: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                        child: Text(
                          item.name,
                          textScaleFactor: 1.2,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      footer: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Text(
                          textScaleFactor: 1.7,
                          item.price.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      child: Image.network(item.image),
                    ),
                  );
                },
                itemCount: CatalogModles.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
