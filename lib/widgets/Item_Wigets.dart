import 'package:application/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:application/models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;
  const ItemWidgets({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: ListTile(
        onTap: () {
          print("Wanna buy it");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 2.0,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
          
        ),
      ),
    );
  }
}
