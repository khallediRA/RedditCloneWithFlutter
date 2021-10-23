import 'package:flutter/material.dart';
import 'package:springredditclone/Models/best_community_model.dart';
import 'package:springredditclone/widgets/common.dart';

class BestCommunityWidget extends StatelessWidget {
  const BestCommunityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const filterList = ["Au Top", "Prés de vous", "Sports", "Trop Mignon !"];

    return Container(
      height: 390,
      width: 300,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 75,
            child: Stack(
              fit: StackFit.expand,
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                  child: Image(
                    height: 400,
                    width: 240,
                    image: AssetImage("assets/images/banner.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ...bestCommunityList.map(
                  (e) => BestCommunityList(
                    bestCommunityElement: e,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width: double.infinity,
                        height: 34,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: const Center(
                          child: Text("Voir Tout",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Wrap(
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        ...filterList.map(
                          (e) => FilterChip(
                              backgroundColor: Colors.grey[200],
                              label: Text(
                                e.toString(),
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w800),
                              ),
                              onSelected: (onSelected) {}),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
