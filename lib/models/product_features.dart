class Features {
  String? name;
  String? image;
  double? price;
  String? location;
  String? age;
  bool? isFavorite;

  Features({this.name, this.image,  this.price,  this.location,  this.age, this.isFavorite,});

  Features.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['Image'];
    price = json['price'];
    location = json['location'];
    age = json['age'];
    isFavorite = json['isFavorite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['Image'] = this.image;
    data['price'] = this.price;
    data['location'] = this.location;
    data['age'] = this.age;
    data['isFavorite'] = this.isFavorite;
    return data;
  }
}

final List<Features> featuresList = [
  Features(name: "Cat",image: "images/cat1.png", price: 5000.0, location: "Mohammadpur", age: "2 years", isFavorite: true),
  Features(name: "Dog",image: "images/dog.png", price: 8000.0, location: "Gulshan", age: "3 years", isFavorite: false),
  Features(name: "Bird",image: "images/bird1.png", price: 3000.0, location: "Dhanmondi", age: "1 year", isFavorite: true),
  Features(name: "Rabbit",image: "images/rabbit1.png", price: 7000.0, location: "Katabon", age: "2 years", isFavorite: false),
  Features(name: "Fish",image: "images/fish1.png", price: 1000.0, location: "Krishi Market", age: "1 year", isFavorite: true),
  Features(name: "Duck",image: "images/duck1.png", price: 1500.0, location: "Rayer Bazar", age: "1 year", isFavorite: true),
  Features(name: "Horse",image: "images/horse1.png", price: 20000.0, location: "Puran Dhaka", age: "5 years", isFavorite: true),
];