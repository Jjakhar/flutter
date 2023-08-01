class CatalogModel {
  static final items = [
    Item(1, "iPhone 15 Pro Max", "Latest A17 bionic chip", 1199, "#33505a",
        "https://img4.gadgetsnow.com/gd/images/products/additional/large/G390862_View_1/mobiles/smartphones/apple-iphone-14-pro-max-512-gb-gold-6-gb-ram-.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
