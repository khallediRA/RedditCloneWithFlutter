import 'package:flutter/material.dart';

class PremiumRedditWidget extends StatelessWidget {
  const PremiumRedditWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.security_outlined,
                  color: Colors.orange[900],
                  size: 30,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Reddit Premium",
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[800]),
                    ),
                    Container(
                      width: 200,
                      child: Text(
                        "Une expérience Reddit enrichie, avec des pièces chaque mois",
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500,
                            fontSize: 11.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              hoverColor: Colors.amber[300],
              onTap: () {},
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Center(
                    child: Text(
                  "Essayez Maintenant",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
