

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
  Category(name: "All",image: "images/all_item.png"),
  Category(name: "Phone",image: "images/phone.png"),
  Category(name: "Device",image: "images/router.png"),
  Category(name: "Tele",image: "images/webcam.png"),

];