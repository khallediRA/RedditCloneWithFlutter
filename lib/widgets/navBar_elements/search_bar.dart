import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.blue,
      child: Container(
        width: 600,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [BoxShadow(color: Colors.transparent)],
          border:
              Border.all(color: (Colors.grey[200])!, style: BorderStyle.solid),
        ),
        child: const Center(
          child: TextField(
            cursorColor: Colors.red,
            style: TextStyle(fontSize: 16.0),
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                fillColor: Colors.red,
                hoverColor: Colors.grey,
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                prefixIcon: Icon(
                  Icons.search,
                ),
                focusColor: Colors.red,
                hintText: 'Recherche dans Reddit',
                hintStyle: TextStyle(
                  fontSize: 16.0,
                )),
          ),
        ),
      ),
    );
  }
}
