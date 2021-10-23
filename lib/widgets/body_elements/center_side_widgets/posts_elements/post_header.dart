import 'package:flutter/material.dart';
import 'package:springredditclone/Models/post_model.dart';

class PostHeaderWidget extends StatelessWidget {
  const PostHeaderWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        children: [
          Container(
            height: 30,
            width: 30,
            child: CircleAvatar(
              radius: 50,
              child: Image.asset(
                post.community.communityImageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            post.community.commmunityName,
            style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            "Publié par",
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12.0,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            post.community.posterName,
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12.0,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 5.0,
          ),
          Text(
            post.postDate,
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12.0,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 5.0,
          ),
          if (post.reactions != null)
            Row(
              children: post.reactions!.map((reaction) {
                return Row(
                  children: [
                    Text(
                      reaction.numberOfReaction.toString(),
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    Text(reaction.reactionType),
                    const SizedBox(
                      width: 5.0,
                    ),
                  ],
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
