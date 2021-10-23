class BestCommunity {
  final String imageUrl;
  final String communityname;
  final int rank;

  const BestCommunity(
      {required this.imageUrl,
      required this.communityname,
      required this.rank});
}

const bestCommunityList = [
  BestCommunity(
      imageUrl: "assets/images/avatars/avatar 1.PNG",
      communityname: "Community Leaders",
      rank: 1),
  BestCommunity(
      imageUrl: "assets/images/avatars/avatar 2.PNG",
      communityname: "Community Vandals",
      rank: 2),
  BestCommunity(
      imageUrl: "assets/images/avatars/avatar 3.PNG",
      communityname: "Community Dodgets",
      rank: 3),
  BestCommunity(
      imageUrl: "assets/images/avatars/avatar 4.PNG",
      communityname: "Community Ultras",
      rank: 4),
];
