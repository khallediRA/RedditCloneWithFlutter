import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FunctionsWidget extends StatelessWidget {
  const FunctionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(30, 45),
      icon: const Icon(
        Icons.keyboard_arrow_down_outlined,
        size: 20.0,
        color: (Colors.grey),
      ),
      itemBuilder: (context) => [
        const PopupMenuItem(
          height: 20,
          child: Text(
            "VOIR LES OPTIONS",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          ),
          enabled: false,
        ),
        PopupMenuItem(
          height: 40,
          child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Icon(
                          Icons.dark_mode_outlined,
                          color: Colors.grey[600],
                          size: 20.0,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Text("Mode Nocturne",
                          style: TextStyle(
                            letterSpacing: 0.7,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: (Colors.grey[600])!,
                          )),
                    ],
                  ),
                  Transform.scale(
                    scale: 0.5,
                    child: CupertinoSwitch(
                      activeColor: Colors.blue,
                      onChanged: (change) {},
                      value: true,
                    ),
                  ),
                ],
              )),
        ),
        const PopupMenuItem(
          height: 20,
          child: Text(
            "FONCTIONNALITÉS REDDIT",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          ),
          enabled: false,
        ),
        PopupMenuItem(
          height: 40,
          child: SizedBox(
              width: 170,
              child: Row(
                children: [
                  Icon(
                    Icons.copyright_outlined,
                    color: (Colors.grey[600])!,
                    size: 20.0,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pièces",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600],
                        ),
                      ),
                      const Text(
                        "0 pièces",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              )),
        ),
        PopupMenuItem(
          height: 40,
          child: SizedBox(
            width: 170,
            child: Row(
              children: [
                Icon(
                  Icons.verified_user_outlined,
                  color: (Colors.grey[600])!,
                  size: 20.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Premium",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem(
          height: 40,
          child: SizedBox(
            width: 170,
            child: Row(
              children: [
                Icon(
                  Icons.bolt_outlined,
                  color: (Colors.grey[600])!,
                  size: 20.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Powerups",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem(
          height: 40,
          child: SizedBox(
            width: 170,
            child: Row(
              children: [
                Icon(
                  Icons.question_answer_outlined,
                  color: Colors.grey[600],
                  size: 20.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Talk",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem(
          height: 40,
          child: SizedBox(
            width: 170,
            child: Row(
              children: [
                Icon(
                  Icons.help_outline_outlined,
                  color: Colors.grey[600],
                  size: 20.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Centre d'aide",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem(
          height: 1,
          enabled: false,
          child: Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[350],
          ),
        ),
        PopupMenuItem(
          height: 40,
          child: SizedBox(
            width: 170,
            child: Row(
              children: [
                Icon(
                  Icons.login_rounded,
                  color: Colors.grey[600],
                  size: 20.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Connexion / Inscription",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
