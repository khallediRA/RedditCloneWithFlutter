import 'package:flutter/material.dart';
import 'package:springredditclone/widgets/common.dart';

class PoularPublicationWidget extends StatelessWidget {
  const PoularPublicationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Publications populaires",
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
          height: 50,
          width: 700,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.3),
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, offset: Offset(5, 5), blurRadius: 1)
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      const TextFilterWidget(
                        text: "Populaires",
                        iconData: Icons.trending_up_sharp,
                        isdesigned: true,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const TextFilterWidget(
                          text: "Partout",
                          iconData: Icons.keyboard_arrow_down_outlined,
                          isdesigned: true),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const TextFilterWidget(
                          text: "News",
                          iconData: Icons.new_releases_outlined,
                          isdesigned: false),
                      const TextFilterWidget(
                          text: "Au Top",
                          iconData: Icons.vertical_align_top_rounded,
                          isdesigned: false),
                      const SizedBox(
                        width: 10.0,
                      ),
                      ListedPopularButton(
                          iconData: Icons.more_horiz_outlined,
                          items: [
                            {Icons.trending_up_rounded: "En Hausse"},
                          ]),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                      child: Icon(Icons.list_alt_rounded,
                          size: 20.0, color: Colors.grey[500]),
                    ),
                    ListedPopularButton(
                        iconData: Icons.keyboard_arrow_down_rounded,
                        items: [
                          {Icons.view_agenda: "Cartes"},
                          {Icons.view_day: "Vue Classique"},
                          {Icons.calendar_view_week_outlined: "Compact"}
                        ])
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
