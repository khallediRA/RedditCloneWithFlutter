import 'package:flutter/material.dart';
import 'package:springredditclone/Models/post_model.dart';
import 'package:springredditclone/widgets/body_elements/center_side_widgets/posts_elements/post_widget.dart';

class PostList extends StatelessWidget {
  final ScrollController? scrollController;
  const PostList({Key? key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1500,
      width: 700,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: posts_List.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                PostWidget(
                  post: posts_List[index],
                ),
                const SizedBox(height: 15.0),
              ],
            );
          }),
    );
  }
}
