import 'dart:ui';

import 'package:connect_me/Colors/Couleurs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reglages extends StatefulWidget {
  @override
  _ReglagesState createState() => _ReglagesState();
}

class _ReglagesState extends State<Reglages> {
  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.left_chevron,
              color: premiereCouleur, size: 30),
          onPressed: () {},
        ),
        title: Column(
          children: [
            Text(
              "Réglages",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: cinquiemeCouleur,
                    fontSize: longueur * 0.025,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.question_circle_fill,
                color: premiereCouleur, size: 30),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: quatriemeCouleur,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: longueur * 0.05,
                    width: largeur,
                    decoration: BoxDecoration(
                        color: sixiemeCouleur.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.search,
                            color: Colors.grey,
                          ),
                          Divider(height: 10),
                          Text(
                            "Rechercher",
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                                fontSize: longueur * 0.018,
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  panneauReglage(
                      CupertinoIcons.person_add,
                      "S'abonner et inviter des amis",
                      CupertinoIcons.right_chevron),
                  panneauReglage(CupertinoIcons.time, "Votre activité",
                      CupertinoIcons.right_chevron),
                  panneauReglage(CupertinoIcons.bell, "Notification",
                      CupertinoIcons.right_chevron),
                  panneauReglage(CupertinoIcons.lock, "Confidentialité",
                      CupertinoIcons.right_chevron),
                  panneauReglage(CupertinoIcons.gift, "Publicité",
                      CupertinoIcons.right_chevron),
                  panneauReglage(CupertinoIcons.lock_shield, "Sécurité",
                      CupertinoIcons.right_chevron),
                  panneauReglage(CupertinoIcons.person_alt_circle, "Mon compte",
                      CupertinoIcons.right_chevron),
                  panneauReglage(CupertinoIcons.info, "À propos",
                      CupertinoIcons.right_chevron),
                  panneauReglage(CupertinoIcons.square_arrow_left,
                      "Déconnexion", CupertinoIcons.right_chevron),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget panneauReglage(IconData icone1, String titre, IconData icone2) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                icone1,
                color: Colors.grey,
              ),
            ),
            Divider(height: 50),
            Text(titre,
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w700, color: cinquiemeCouleur),
                )),
            Spacer(),
            Icon(
              icone2,
              color: Colors.grey,
            ),
          ],
        ),
        Divider(
          color: sixiemeCouleur,
        )
      ],
    );
  }
}
