import 'package:flutter/material.dart';
import 'package:springredditclone/Models/best_community_model.dart';

class BestCommunityList extends StatelessWidget {
  final BestCommunity bestCommunityElement;

  const BestCommunityList({Key? key, required this.bestCommunityElement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Text(
                  bestCommunityElement.rank.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(width: 3.0),
                Icon(
                  Icons.keyboard_arrow_up_outlined,
                  color: Colors.green[400],
                ),
                const SizedBox(width: 5.0),
                CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    bestCommunityElement.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 7.0),
                Text(
                  bestCommunityElement.communityname,
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
        ((bestCommunityList.indexOf(bestCommunityElement) + 1) !=
                bestCommunityList.length)
            ? Divider(
                height: 0.1,
                color: Colors.grey[400],
              )
            : const SizedBox(
                height: 10,
              )
      ],
    );
  }
}
