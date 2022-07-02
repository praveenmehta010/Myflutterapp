class CatalogModles {
  static List<Item> items = [];
}

class Item {
 final num id;
 final String desc;
 final String name;
 final String color;
 final String image;
 final num price;

  Item(
    {
      required this.id,
      required this.desc,
      required this.name,
      required this.color,
      required this.image,
      required this.price
    }
      );

 factory Item.fromMap (Map <String, dynamic> map) {
    return Item(
      id : map['id'],
      desc : map["desc"],
      name : map["name"],
      color : map["color"],
      image : map["image"],
      price : map["price"],
    );
 } 

toJson() =>{
    "id" : id,
    "desc" : desc,
    "name" : name,
    "color" : color,
    "image" : image,
    "price" : price
  };
  
}