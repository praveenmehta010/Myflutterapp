class CatalogModles {
  static final items = [
  Item(
     001,
    "Apple phone 12 max pro",
    "Iphone 12 max pro",
    "#33505a",
    "https://imgs.search.brave.com/ybNQJRx3Mf1sLSB4NSSv3OoyJYp9FneZkofTNV4O5E0/rs:fit:498:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5y/MnlETEpHeG9peVBz/ZHhzbGJ0aU1BSGFI/RCZwaWQ9QXBp",
     999),
];

}

class Item {
  final num id;
  final String desc;
  final String name;
  final String color;
  final String image;
  final num price;

  Item(this.id, this.desc, this.name, this.color, this.image, this.price);
}