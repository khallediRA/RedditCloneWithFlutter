import 'package:flutter/material.dart';

class Item {
  final String title;
  final List<Filter> filters;
  bool isExpanded;
  Item({required this.title, required this.filters, required this.isExpanded});
}

class Filter {
  final String filterName;
  bool isSelected;
  Filter({required this.filterName, this.isSelected = false});
}

class PopularCommunity extends StatefulWidget {
  const PopularCommunity({Key? key}) : super(key: key);

  @override
  _PopularCommunityState createState() => _PopularCommunityState();
}

class _PopularCommunityState extends State<PopularCommunity> {
  List<Item> items = [
    Item(
        title: "Gaming",
        filters: [
          Filter(filterName: "Gameing 1"),
          Filter(filterName: "Gameing 2")
        ],
        isExpanded: false),
    Item(
        title: "Movies",
        filters: [
          Filter(filterName: "Movies 1"),
          Filter(filterName: "Movies 1"),
          Filter(filterName: "Movies 1"),
          Filter(filterName: "Movies 1")
        ],
        isExpanded: false),
    Item(
        title: "Sport",
        filters: [
          Filter(filterName: "Sport 1"),
          Filter(filterName: "Sport 2"),
          Filter(filterName: "Sport 3"),
          Filter(filterName: "Sport 4")
        ],
        isExpanded: false),
    Item(
        title: "Programmers",
        filters: [
          Filter(filterName: "Programmers 1"),
          Filter(filterName: "Programmers 2"),
          Filter(filterName: "Programmers 3"),
          Filter(filterName: "Programmers 4"),
        ],
        isExpanded: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool expanded) {
        setState(() {
          items[index].isExpanded = !expanded;
        });
      },
      children: items.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.title),
            );
          },
          body: Wrap(
            children: item.filters.map((filter) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  border: filter.isSelected
                      ? const Border(
                          top: BorderSide(
                              color: Colors.black, width: double.infinity))
                      : null,
                ),
                child: InkWell(
                  hoverColor: Colors.white,
                  onTap: () {},
                  onHover: (hovered) {
                    setState(() {
                      filter.isSelected = hovered;
                    });
                  },
                  child: TextButton(
                    child: Text(
                      filter.filterName,
                      style: TextStyle(
                          decoration: filter.isSelected
                              ? TextDecoration.underline
                              : null,
                          color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ),
              );
            }).toList(),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
