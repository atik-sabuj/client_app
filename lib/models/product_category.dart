

class Category {
  String? name;
  String? image;

  Category({this.name, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['Image'] = this.image;
    return data;
  }
}

final List<Category> categoryList = [
  Category(name: "All Brands",image: "images/all_item.png"),
  Category(name: "Smart Phones",image: "images/phone.png"),
  Category(name: "Telecom Devices",image: "images/router.png"),
  Category(name: "Telecom Accessories",image: "images/webcam.png"),

];