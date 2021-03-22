import 'dart:ui';

import 'package:connect_me/Colors/Couleurs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      degrade1,
                      degrade2,
                      degrade3,
                    ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: longueur * 0.7,
                    width: largeur,
                    decoration: BoxDecoration(
                      color: quatriemeCouleur,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 520.0,
              left: 20.0,
              child: Container(
                height: longueur * 0.160,
                width: largeur * 0.300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: quatriemeCouleur,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/profil/fabrice.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 590.0,
              left: 150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fabrice N'dja,",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: quatriemeCouleur,
                        fontSize: longueur * 0.030,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    "Développeur Mobile & Web,",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: Colors.white54,
                        fontSize: longueur * 0.017,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 510.0,
              left: 150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1m",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: cinquiemeCouleur,
                        fontSize: longueur * 0.030,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    "Abonnés",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: sixiemeCouleur,
                        fontSize: longueur * 0.017,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 510.0,
              left: 250.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "305k",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: cinquiemeCouleur,
                        fontSize: longueur * 0.030,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    "Abonnements,",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: sixiemeCouleur,
                        fontSize: longueur * 0.017,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: longueur * 0.020),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: longueur * 0.320),
                    Text(
                      "Photos",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: cinquiemeCouleur,
                          fontSize: longueur * 0.030,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          photoCadre("assets/images/image1.jpg", "565", "75", "87"),
                          photoCadre("assets/images/image2.jpg", "565", "75", "87"),
                          photoCadre("assets/images/image3.jpg", "565", "75", "87"),
                          photoCadre("assets/images/image8.png", "565", "75", "87"),
                          photoCadre("assets/images/image7.jpg", "565", "75", "87"),
                        ],
                      ),
                    ),
                    SizedBox(height: longueur * 0.020),
                    Text(
                      "Stories",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: cinquiemeCouleur,
                          fontSize: longueur * 0.030,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          storieCadre("assets/images/image8.png"),
                          storieCadre("assets/images/image7.jpg"),
                          storieCadre("assets/images/image1.jpg"),
                          storieCadre("assets/images/image3.jpg"),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget photoCadre(String imagePhoto, String nombreLike,
      String nombreCommentaire, String nombreHeureux) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        right: longueur * 0.010,
      ),
      child: Column(
        children: [
          Container(
            height: longueur * 0.200,
            width: largeur * 0.400,
            decoration: BoxDecoration(
              border: Border.all(
                color: quatriemeCouleur,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePhoto),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: longueur * 0.060,
            width: largeur * 0.400,
            child: Row(
              children: <Widget>[
                Icon(CupertinoIcons.heart_fill, color: Colors.red, size: 19),
                Text(
                  nombreLike,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: cinquiemeCouleur,
                      fontSize: longueur * 0.017,
                    ),
                  ),
                ),
                Spacer(),
                Icon(CupertinoIcons.smiley, color: sixiemeCouleur, size: 19),
                Text(
                  nombreHeureux,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: cinquiemeCouleur,
                      fontSize: longueur * 0.017,
                    ),
                  ),
                ),
                Spacer(),
                Icon(CupertinoIcons.chat_bubble_text,
                    color: sixiemeCouleur, size: 19),
                Text(
                  nombreCommentaire,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: cinquiemeCouleur,
                      fontSize: longueur * 0.017,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget storieCadre(String imagePhoto) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        right: longueur * 0.010),
      child: Container(
        height: longueur * 0.250,
        width: largeur * 0.400,
        decoration: BoxDecoration(
          border: Border.all(
            color: quatriemeCouleur,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imagePhoto),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
