class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

final Products = [
  Item("1", "iPhone 15 Pro Max", "Latest A17 bionic chip", 1200, "#33505a",
      "https://images.macrumors.com/article-new/2023/02/iPhone-15-Pro-Burgandy-Feature.jpg")
];
