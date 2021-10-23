import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:springredditclone/widgets/body_elements/center_side_widgets/posts_list.dart';

import 'common.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = new ScrollController();
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 2.64,
        child: Align(
          alignment: Alignment(0.8, 0),
          child: Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width / 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                const TopNewsWidget(),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PoularPublicationWidget(),
                        const SizedBox(
                          height: 25,
                        ),
                        PostList(scrollController: _scrollController),
                      ],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SizedBox(
                      width: 300,
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 35.0,
                          ),
                          BestCommunityWidget(),
                          SizedBox(
                            height: 15.0,
                          ),
                          PremiumRedditWidget(),
                          SizedBox(
                            height: 15.0,
                          ),
                          PopularCommunity(),
                          SizedBox(
                            height: 15.0,
                          ),
                          AboutRedditWidget()
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
