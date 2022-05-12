class Contest {
  final String name;
  final String organiser;
  final String image;
  final String description;
  final String deadline;
  final int prize;
  final String level;
  final int total;
  final List<Map<String, String>> participants;

  Contest({ required this.name, required this.organiser, required this.image, required this.description, required this.deadline, required this.prize, required this.level, required this.total, required this.participants });

  factory Contest.fromJson(Map<String, dynamic> json) {
    return Contest(
      name: json['name'],
      organiser: json['organiser'],
      image: json['image'],
      description: json['description'],
      deadline: json['deadline'],
      prize: json['prize'],
      level: json['level'],
      total: json['total participants'],
      participants: json['participants']
    );
  }
}