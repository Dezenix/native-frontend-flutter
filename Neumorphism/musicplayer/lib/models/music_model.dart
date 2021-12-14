class MusicModel {
  final int id;
  final String title;
  final String album;
  final double duration;

  MusicModel({this.id, this.title, this.album, this.duration});

  static List<MusicModel> list = [
    MusicModel(
      id: 1,
      title: "Sicko Mode",
      album: "Astroworld",
      duration: 60,
    ),
    MusicModel(
      id: 2,
      title: "Skeletons",
      album: "Astroworld",
      duration: 60,
    ),
    MusicModel(
      id: 3,
      title: "Butterfly Effect",
      album: "Astroworld",
      duration: 60,
    ),
    MusicModel(
      id: 4,
      title: "Stargazing",
      album: "Astroworld",
      duration: 60,
    ),
    MusicModel(
      id: 5,
      title: "Yosemite",
      album: "Astroworld",
      duration: 60,
    ),
    MusicModel(
      id: 6,
      title: "No Bystanders",
      album: "Astroworld",
      duration: 60,
    ),
    MusicModel(
      id: 7,
      title: "Houstonfornication",
      album: "Astroworld",
      duration: 60,
    ),
    MusicModel(
      id: 8,
      title: "Can't Say",
      album: "Astroworld",
      duration: 60,
    )
  ];
}
