class Tool {
  final String name;
  final String price;
  final String image;

  Tool({
    required this.name,
    required this.price,
    required this.image,
  });
 factory Tool.fromJson(Map<String, dynamic> json) {
    return Tool(

      name: json['name'],
      price: json['price'],
      image: json['image'],

    );
  }
}
