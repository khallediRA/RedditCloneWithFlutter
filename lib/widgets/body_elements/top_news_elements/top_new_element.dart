import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopNewsElement extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const TopNewsElement(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                height: 400,
                width: 240,
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 380,
            width: 240,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          Positioned(
            top: 120,
            left: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
