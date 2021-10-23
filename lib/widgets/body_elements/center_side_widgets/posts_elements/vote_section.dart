import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VoteSection extends StatefulWidget {
  final int? numberOfVotes;
  const VoteSection({Key? key, this.numberOfVotes}) : super(key: key);

  @override
  _VoteSectionState createState() => _VoteSectionState();
}

class _VoteSectionState extends State<VoteSection> {
  String voteType = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 50,
      color: Colors.grey[200],
      child: Column(
        children: [
          IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () {
              setState(() {
                if (voteType != "UPVOTED") {
                  voteType = "UPVOTED";
                } else {
                  voteType = "";
                }
              });
            },
            icon: Icon(
              Icons.arrow_circle_up_sharp,
              color: voteType == "UPVOTED" ? Colors.blue : Colors.grey,
              size: 29,
            ),
          ),
          Text(
            NumberFormat.compact().format(widget.numberOfVotes).toString(),
            style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
          ),
          IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () {
              setState(() {
                if (voteType != "DOWNVOTED") {
                  voteType = "DOWNVOTED";
                } else {
                  voteType = "";
                }
              });
            },
            icon: Icon(
              Icons.arrow_circle_down_sharp,
              size: 29,
              color: voteType == "DOWNVOTED" ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
