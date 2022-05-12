class Bootcamp {
  final String name;
  final String image;
  final String duration;

  Bootcamp({ required this.name, required this.image, required this.duration });

  factory Bootcamp.fromJson(Map<String, dynamic> json) {
    return Bootcamp(
      name: json['name'],
      image: json['image'],
      duration: json['duration']
    );
  }
}