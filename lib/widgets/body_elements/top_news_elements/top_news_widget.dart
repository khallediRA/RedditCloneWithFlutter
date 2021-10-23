import 'package:flutter/material.dart';
import 'package:springredditclone/Models/top_new.dart';
import 'package:springredditclone/widgets/common.dart';

class TopNewsWidget extends StatefulWidget {
  const TopNewsWidget({Key? key}) : super(key: key);

  @override
  _TopNewsWidgetState createState() => _TopNewsWidgetState();
}

class _TopNewsWidgetState extends State<TopNewsWidget> {
  ScrollController? _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tendance Aujourd'hui",
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        SizedBox(
          height: 170,
          child: RawScrollbar(
            interactive: true,
            minThumbLength: 5.0,
            radius: const Radius.circular(5.0),
            minOverscrollLength: 5.0,
            scrollbarOrientation: ScrollbarOrientation.bottom,
            thickness: 8,
            thumbColor: Colors.grey,
            isAlwaysShown: true,
            controller: _scrollController,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: top_news_list.length,
              itemBuilder: (BuildContext context, int index) {
                return TopNewsElement(
                    imageUrl: top_news_list[index].imageUrl,
                    title: top_news_list[index].title,
                    description: top_news_list[index].description);
              },
            ),
          ),
        ),
      ],
    );
  }
}
