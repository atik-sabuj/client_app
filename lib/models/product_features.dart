class Features {
  String? name;
  String? image;
  double? price;


  Features({this.name, this.image,  this.price,});

  Features.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['Image'];
    price = json['price'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['Image'] = this.image;
    data['price'] = this.price;
    return data;
  }
}

final List<Features> featuresList = [
  Features(name: "Smart Phones",image: "images/phone.png", price: 5000.0,),

];