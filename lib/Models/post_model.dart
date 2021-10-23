class Post {
  final String postTitle;
  final Community community;

  final String postDate;
  final List<Reaction>? reactions;
  final int? numberOfComment;
  final int? numberOfVotes;
  final String imageUrl;

  Post(
      {required this.postTitle,
      required this.community,
      required this.postDate,
      required this.imageUrl,
      this.reactions,
      this.numberOfComment,
      this.numberOfVotes});
}

class Reaction {
  final int numberOfReaction;
  final String reactionType;

  Reaction({required this.numberOfReaction, required this.reactionType});
}

class Community {
  final String commmunityName;
  final String posterName;
  final String communityImageUrl;

  Community(
      {required this.commmunityName,
      required this.posterName,
      required this.communityImageUrl});
}

final posts_List = [
  Post(
    community: Community(
        commmunityName: "r/interestingasfuck",
        posterName: "u/Apxm",
        communityImageUrl: "assets/images/avatars/avatar 1.PNG"),
    imageUrl: "assets/images/posts/Post1.jpg",
    postDate: "Il y a 6 heures",
    postTitle: "A protester squirting milk on riot Police",
    numberOfComment: 527,
    numberOfVotes: 25400,
    reactions: [
      Reaction(numberOfReaction: 24, reactionType: "🤣"),
      Reaction(numberOfReaction: 5, reactionType: "😡"),
      Reaction(numberOfReaction: 90, reactionType: "🤯"),
      Reaction(numberOfReaction: 3, reactionType: "😳")
    ],
  ),
  Post(
    community: Community(
        commmunityName: "r/interestingasfuck",
        posterName: "paru/Overall-Flatworm-587",
        communityImageUrl: "assets/images/avatars/avatar 2.PNG"),
    imageUrl: "assets/images/posts/Post2.jpg",
    postDate: "il y a 12 heures",
    postTitle: "Height lengthening surgery, going from 5’7 to 6 feet",
    numberOfComment: 8800,
    numberOfVotes: 74400,
    reactions: [
      Reaction(numberOfReaction: 4, reactionType: "🤣"),
      Reaction(numberOfReaction: 90, reactionType: "😡"),
      Reaction(numberOfReaction: 130, reactionType: "🤯"),
      Reaction(numberOfReaction: 8, reactionType: "😳")
    ],
  ),
  Post(
    community: Community(
        commmunityName: "r/ProgrammerHumor",
        posterName: "r/Swathle25",
        communityImageUrl: "assets/images/avatars/avatar 3.PNG"),
    imageUrl: "assets/images/posts/Post3.jpg",
    postDate: " il y a 5 heures",
    postTitle: "I just need to learn how to get faster",
    numberOfComment: 127,
    numberOfVotes: 14800,
    reactions: [
      Reaction(numberOfReaction: 3, reactionType: "🤣"),
      Reaction(numberOfReaction: 90, reactionType: "😡"),
      Reaction(numberOfReaction: 123, reactionType: "🤯"),
      Reaction(numberOfReaction: 7, reactionType: "😳")
    ],
  ),
];
