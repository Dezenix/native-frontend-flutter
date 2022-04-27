class Podcast {
  final String title;
  final String poster;
  final String voice;
  final String duration;
  final String episodes;

  Podcast({ required this.title, required this.poster, required this.voice, required this.duration, required this.episodes });

  factory Podcast.fromJson(Map<String, dynamic> json) {
    return Podcast(
      title: json['title'],
      poster: json['poster'],
      voice: json['voice'],
      duration: json['duration'],
      episodes: json['episodes']
    );
  }
}