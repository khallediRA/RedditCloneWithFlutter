class News {
  final String title;
  final String description;
  final String imageUrl;

  const News(
      {required this.title, required this.description, required this.imageUrl});
}

const top_news_list = [
  News(
      title: "Nobel Prize In Physics",
      description: "Nobel Prize In Physics 2021",
      imageUrl: "assets/images/Nobel_prise.jpg"),
  News(
      title: "Sora In Smash Bros",
      description: "SORA IN SMASH",
      imageUrl: "assets/images/anime.jpg"),
  News(
      title: "NYPD Union Raid",
      description: "FBI rais New York City police department",
      imageUrl: "assets/images/nypd.jpg"),
  News(
      title: "U.N Environmental Proposal",
      description:
          "Clean Environment could become U.N human right. Not just the equivilant of",
      imageUrl: "assets/images/syria.jpg")
];
