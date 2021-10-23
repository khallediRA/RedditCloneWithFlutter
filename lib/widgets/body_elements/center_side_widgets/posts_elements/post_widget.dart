import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:springredditclone/Models/post_model.dart';
import 'package:springredditclone/widgets/common.dart';
import 'package:springredditclone/widgets/body_elements/center_side_widgets/posts_elements/vote_section.dart';

class PostWidget extends StatelessWidget {
  final Post post;
  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 700,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: (Colors.grey[400])!, width: 1.5)),
      child: Row(
        children: [
          VoteSection(numberOfVotes: post.numberOfVotes),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostHeaderWidget(post: post),
              Flexible(
                child: Text(
                  post.postTitle,
                  maxLines: 3,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 390,
                width: 647,
                child: Image.asset(
                  post.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                children: [
                  PostButtons(
                    buttonText: "Commentaires",
                    icon: Icons.mode_comment_outlined,
                    numberOfComment: post.numberOfComment,
                  ),
                  PostButtons(
                      buttonText: "Partage", icon: Icons.screen_share_outlined),
                  PostButtons(
                      buttonText: "Enregistrer", icon: Icons.save_alt_rounded)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class PostButtons extends StatelessWidget {
  final int? numberOfComment;
  final String buttonText;
  final IconData icon;

  const PostButtons(
      {Key? key,
      this.numberOfComment,
      required this.buttonText,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.grey[100];
            }
            return Colors.white;
          },
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 0.6,
          ),
          Icon(
            icon,
            color: Colors.grey,
          ),
          Row(
            children: [
              numberOfComment != null
                  ? Text(
                      NumberFormat.compact().format(numberOfComment).toString(),
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500]),
                    )
                  : const SizedBox(),
              const SizedBox(
                width: 2.0,
              ),
              Text(
                buttonText,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
