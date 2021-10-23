import 'package:flutter/material.dart';

class AboutRedditWidget extends StatelessWidget {
  const AboutRedditWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 300,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AboutText(
                  title: "Aide",
                  description: "À Propos",
                ),
                AboutText(
                  title: "Pièces Reddit",
                  description: "Carrières",
                ),
                AboutText(
                  title: "Reddit Premium",
                  description: "Presse",
                ),
                AboutText(
                  title: "Reddit Gifts",
                  description: "Publicités",
                ),
                AboutText(
                  title: "Communautés",
                  description: "Blog",
                ),
                AboutText(
                  title: "Rereddit",
                  description: "Conditions",
                ),
                AboutText(
                  title: "Thématiques",
                  description: "Politique De Contenu",
                ),
                AboutText(
                  title: "",
                  description: "Politique De Confidentialité",
                ),
                AboutText(
                  title: "",
                  description: "Politique De Modération",
                ),
              ],
            ),
            Text(
              "Reddit Inc © 2021 . Tous droits réservés",
              style: TextStyle(
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AboutText extends StatelessWidget {
  final String title;
  final String description;
  const AboutText({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: Row(
        children: [
          Container(
            width: 90.0,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
          Spacer(),
          Flexible(
            child: Text(
              description,
              textAlign: TextAlign.start,
              maxLines: 2,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
