import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  Color _containerHoverColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: MouseCursor.defer,
      onEnter: (PointerEvent event) => setState(() {
        _containerHoverColor = const Color(0xFFC1DCF2);
      }),
      onExit: (PointerEvent event) => setState(() {
        _containerHoverColor = Colors.white;
      }),
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: () {},
        child: Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
            color: _containerHoverColor,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: (Colors.blue[700])!,
              style: BorderStyle.solid,
            ),
          ),
          child: Center(
            child: Text(
              "        Se \n Connecter",
              style: TextStyle(
                  color: (Colors.blue[700])!,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
