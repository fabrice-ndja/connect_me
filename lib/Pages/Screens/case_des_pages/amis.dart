import 'dart:ui';

import 'package:connect_me/Colors/Couleurs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_animation_helper/route_animation_helper.dart';

class Amis extends StatefulWidget {
  @override
  _AmisState createState() => _AmisState();
}

class _AmisState extends State<Amis> {
  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: longueur * 0.010,
                    top: longueur * 0.010,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: MoreGradientColors.instagram,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 2,
                        color: Colors.transparent,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage:
                                AssetImage("assets/profil/fabrice.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          Positioned(
                            bottom: 0.0,
                            right: 0.0,
                            child: Container(
                              height: 15.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                  border: Border.all(
                                    width: 2.0,
                                    color: quatriemeCouleur,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        title: Column(
          children: [
            Text(
              "Amis",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: cinquiemeCouleur,
                    fontSize: longueur * 0.025,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              "Vous avez 22 nouveaux amis",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: sixiemeCouleur,
                    fontSize: longueur * 0.016,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.square_fill_on_square_fill,
                color: premiereCouleur, size: 30),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: quatriemeCouleur,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: longueur * 0.020),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: longueur * 0.010),
                  Row(
                    children: [
                      Divider(height: 10),
                      Text(
                        "Stories",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: cinquiemeCouleur,
                              fontSize: longueur * 0.020,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Voir tous",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: sixiemeCouleur,
                              fontSize: longueur * 0.017,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Divider(height: 10),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        cadreAmis("assets/images/image1.jpg", "Fabrice\nN'dja"),
                        cadreAmis("assets/images/image2.jpg", "Yacé\nImma"),
                        cadreAmis("assets/images/image3.jpg", "Elsa\nTano"),
                        cadreAmis("assets/images/image7.jpg", "Rose\nSenasse"),
                        cadreAmis("assets/images/image8.png", "Ekou\nPaul"),

                      ],
                    ),
                  ),
                  Divider(height: 10),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "ACTIFS(7)",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: cinquiemeCouleur,
                            fontSize: longueur * 0.020,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  amisEnLigne("assets/profil/elsa.png", "Elsa tano"),
                  amisEnLigne("assets/profil/kra.png", "Kra Sosthène"),
                  amisEnLigne("assets/profil/imma.png", "Imma YAcé"),
                  amisEnLigne("assets/profil/rose.png", "Rose Senassé"),
                  amisEnLigne("assets/profil/christy.png", "Chrystelle Djafa"),
                  amisEnLigne("assets/profil/noelle.png", "Noelle Koffi"),
                  amisEnLigne("assets/profil/fabrice.png", "Fabrice N'dja"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cadreAmis(String image, String nom) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: longueur * 0.010),
      child: Container(
        height: longueur * 0.190,
        width: largeur * 0.300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                nom,
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      color: quatriemeCouleur,
                      fontSize: longueur * 0.017,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget amisEnLigne(
    String imageProfil,
    String nom,
  ) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: longueur * 0.010,
                          top: longueur * 0.010,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: MoreGradientColors.instagram,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 2,
                              color: Colors.transparent,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage: AssetImage(imageProfil),
                                  backgroundColor: Colors.transparent,
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    height: 15.0,
                                    width: 15.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                        border: Border.all(
                                          width: 2.0,
                                          color: quatriemeCouleur,
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 50),
            Text(nom,
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w700, color: cinquiemeCouleur),
                )),
            Spacer(),
          ],
        ),
        Divider(
          color: sixiemeCouleur,
        )
      ],
    );
  }
}
