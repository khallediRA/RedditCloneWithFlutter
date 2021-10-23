import 'package:flutter/material.dart';

class ListedPopularButton extends StatelessWidget {
  final IconData iconData;
  final List<Map<IconData, String>> items;

  const ListedPopularButton(
      {Key? key, required this.iconData, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        iconData,
        color: Colors.grey[500],
      ),
      offset: items.length == 1 ? const Offset(0, 40) : const Offset(60, 40),
      itemBuilder: (context) => [
        ...items.map(
          (e) => items.length == 1
              ? PopupMenuItem(
                  height: 20,
                  child: Row(
                    children: [
                      Icon(
                        e.keys.first,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        e.values.first,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                )
              : PopupMenuItem(
                  height: 20,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            e.keys.first,
                            color: Colors.grey[600],
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            e.values.first,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 0.3,
                        width: double.infinity,
                        color: Colors.grey[500],
                      )
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}
