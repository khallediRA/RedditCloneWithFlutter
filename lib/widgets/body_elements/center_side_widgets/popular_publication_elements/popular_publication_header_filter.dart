import 'package:flutter/material.dart';

class TextFilterWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  final bool isdesigned;

  const TextFilterWidget(
      {Key? key,
      required this.text,
      required this.iconData,
      required this.isdesigned})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isdesigned ? 110 : 85,
      height: 28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: isdesigned ? Colors.grey[200] : Colors.white),
      child: Row(children: [
        const SizedBox(
          width: 10,
        ),
        Icon(
          iconData,
          color: isdesigned ? Colors.blue[700] : Colors.grey[500],
          size: 20.0,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: isdesigned ? Colors.blue[700] : Colors.grey[500],
          ),
        ),
      ]),
    );
  }
}
