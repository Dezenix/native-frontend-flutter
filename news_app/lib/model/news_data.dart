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

final List<Article> trendingNews = [
  Article(
    category: 'Politics',
    title: 'Eu bans 90% Russian oil imports',
    description:
        'With the US finding its mojo back in Europe and Russia having a tiger by the tail, there is no incentive to end the raging conflict.',
    time: '1hr ago',
    author: 'CNN',
    image: 'assets/images/T1.jpeg',
    authorImg: 'assets/images/R1.jpeg',
  ),
  Article(
    category: 'Entertainment',
    title: 'Johnny Depp makes surprise cameo',
    description:
        'According to The Hollywood Reporter, in multiple posts on social media and videos shared online, the actor surprised fans at a Jeff Beck concert on Sunday in England.',
    time: '2hr ago',
    author: 'BBC',
    image: 'assets/images/T2.jpeg',
    authorImg: 'assets/images/R2.jpeg',
  ),
  Article(
    category: 'Sports',
    title: 'Allyson Felix gets ready to retire',
    description:
        'Felix is hoping to spend more time with her daughter Camryn born in 2018, to continue advocating for female athletes, and to go on running her Saysh footwear company with her brother.',
    time: '3hr ago',
    author: 'SPO',
    image: 'assets/images/T3.jpeg',
    authorImg: 'assets/images/R3.jpeg',
  ),
  Article(
    category: 'Politics',
    title: 'India prepares to host meeting of ASEAN',
    description:
        'ndia has been pushing Myanmar for the restoration of democracy. At the same time, India has not boycotted the Myanmarese government or its officials.',
    time: '1hr ago',
    author: 'BS',
    image: 'assets/images/T4.jpeg',
    authorImg: 'assets/images/R4.jpeg',
  ),
];




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