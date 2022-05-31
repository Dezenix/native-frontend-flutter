class Article {
  String image;
  String title;
  String description;
  String time;
  String author;
  String category;
  String authorImg;

  Article({
    required this.image,
    required this.title,
    required this.description,
    required this.time,
    required this.author,
    required this.category,
    required this.authorImg,
  });
}

final List<Article> forYou = [
  Article(
    category: 'Sports',
    title: 'Gujrat Titans Won first 1st IPL trophy',
    description:
        'Beating Rajasthan Royal in Finals Gujrat Titans lifts up the very first ipl trophy in their first session under Hardik Pandya Captaincy.',
    time: '30min ago',
    author: 'Start Sport News',
    image: 'assets/images/N1.jpeg',
    authorImg: 'assets/images/A1.jpeg',
  ),
  Article(
    category: 'Entertainment',
    title: 'Bhool Bhulaiya 2 hits Box Office',
    description:
        'Sequal of Bhool Bhulaiya by Akshay Kumar, Bhool Bhulaiya 2 breaks Box Office Record and actor is Karthik Aryan and Kiara Advani.',
    time: '2hr ago',
    author: 'Bollywood News',
    image: 'assets/images/N2.jpeg',
    authorImg:'assets/images/A2.jpeg',
  ),
  Article(
    category: 'Sports',
    title: 'RCB promises again to come stronger.',
    description:
        'After loosing from Rajasthan Royals in qualifier 2 RCB again says we will say "E sala cup namde" in the next year.',
    time: '3hr ago',
    author: 'DD Sport',
    image: 'assets/images/N3.jpeg',
    authorImg: 'assets/images/A3.jpeg',
  ),
  Article(
    category: 'Politics',
    title: 'Russia in no negotiation moood',
    description:
        'With over 3 month long fight neither Putin nor Zelensky in mood to compromise and end war.',
    time: '1hr ago',
    author: 'BBC',
    image: 'assets/images/N4.jpeg',
    authorImg: 'assets/images/A4.jpeg',
  ),
];