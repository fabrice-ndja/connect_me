import 'dart:ui';

import 'package:connect_me/Colors/Couleurs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_animation_helper/route_animation_helper.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
              "Discussions",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                    color: cinquiemeCouleur,
                    fontSize: longueur * 0.025,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              "Vous avez 2 noveaux messages",
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
            icon: Icon(CupertinoIcons.search, color: premiereCouleur, size: 30),
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
                      Text(
                        "Quoi de neuf",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: cinquiemeCouleur,
                              fontSize: longueur * 0.040,
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
                  SizedBox(height: longueur * 0.020),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "20 amis disponibles",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: sixiemeCouleur,
                            fontSize: longueur * 0.022,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        storieCadre("assets/profil/fabrice.png",
                            premiereCouleur, "fabrice"),
                        storieCadre(
                            "assets/profil/elsa.png", premiereCouleur, "Elsa"),
                        storieCadre("assets/profil/noelle.png", premiereCouleur,
                            "Noelle"),
                        storieCadre(
                            "assets/profil/kra.png", premiereCouleur, "Kra"),
                        storieCadre("assets/profil/christy.png",
                            premiereCouleur, "Christy"),
                        storieCadre(
                            "assets/profil/imma.png", premiereCouleur, "Imma"),
                        storieCadre(
                            "assets/profil/rose.png", premiereCouleur, "Rose"),
                      ],
                    ),
                  ),
                  SizedBox(height: longueur * 0.020),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Conversations récentes",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: sixiemeCouleur,
                            fontSize: longueur * 0.022,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  conversationCadre("assets/profil/fabrice.png", "Fabrice",
                      "je suis un développeur expert en Flutter en freelance"),
                  conversationCadre("assets/profil/elsa.png", "Elsa",
                      "hello fabrice, je veux une application mobile pour ma boutique en ligne."),
                  conversationCadre("assets/profil/imma.png", "Imma Yacé",
                      "excellent travail j'adore votre application mobile"),
                  conversationCadre("assets/profil/rose.png", "Rose",
                      "Démain je serais au bureau pour la refonte de mon application"),
                  conversationCadre("assets/profil/kra.png", "Kra Sosthène",
                      "ça fait un bay je cherche un développeur pour mon site internet.")
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: (Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: premiereCouleur,
          border: Border.all(
            width: 2.0,
            color: quatriemeCouleur,
          ),
        ),
        child: IconButton(
          icon: Icon(
            CupertinoIcons.chat_bubble_text_fill,
            color: quatriemeCouleur,
          ),
          onPressed: () {
            Navigator.of(context).push(
              RouteAnimationHelper.createRoute(
                  destination: MessageTchat(),
                  animType: AnimType.slideBottom,
                  duration: 450,
                  curve: Curves.ease),
            );
          },
        ),
      )
      ),
    );
  }

  Widget cadreAmis(String image, String nom) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: longueur * 0.010),
      child: Container(
        height: longueur * 0.160,
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

  Widget storieCadre(String image, Color couleur, String nom) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: longueur * 0.010,
                top: longueur * 0.010,
              ),
              child: Container(
                child: Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(image),
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
        Text(
          nom,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: cinquiemeCouleur,
              fontSize: longueur * 0.017,
            ),
          ),
        )
      ],
    );
  }

  Widget conversationCadre(String image, String titre, String soustitre) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Card(
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 20,
                ),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(image),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 20.0,
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
          Flexible(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    titre,
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: septiemeCouleur,
                          fontSize: longueur * 0.022,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    soustitre,
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: cinquiemeCouleur,
                          fontSize: longueur * 0.016,
                          fontWeight: FontWeight.bold),
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
}

class MessageTchat extends StatefulWidget {
  @override
  _MessageTchatState createState() => _MessageTchatState();
}

class _MessageTchatState extends State<MessageTchat> {
  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/image10.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: longueur * 0.020),
            child: Column(
              children: <Widget>[
                SizedBox(height: longueur * 0.060),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("assets/profil/fabrice.png"),
                      backgroundColor: Colors.transparent,
                    ),
                    Spacer(),
                    GestureDetector(
                      child: Icon(
                        CupertinoIcons.clear,
                        color: quatriemeCouleur,
                        size: longueur * 0.030,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              conversation(
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("assets/profil/fabrice.png"),
                      backgroundColor: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fabrice",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: quatriemeCouleur,
                              fontSize: longueur * 0.020,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Divider(height: 5),
                        Text(
                          "je suis disponible 24h/24",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: sixiemeCouleur,
                              fontSize: longueur * 0.020,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(height: 15),
              conversation(
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("assets/profil/imma.png"),
                      backgroundColor: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Imma",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: quatriemeCouleur,
                              fontSize: longueur * 0.020,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Divider(height: 5),
                        Text(
                          "Je veux un site web",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: sixiemeCouleur,
                              fontSize: longueur * 0.020,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(height: 15),
              conversation(
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("assets/profil/elsa.png"),
                      backgroundColor: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Elsa",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: quatriemeCouleur,
                              fontSize: longueur * 0.020,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Divider(height: 5),
                        Text(
                          "Merci je vous contact",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: sixiemeCouleur,
                              fontSize: longueur * 0.020,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(height: 15),                            
              cadreFlou(
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: longueur * 0.030),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Entrez un message",
                        hintStyle: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            color: quatriemeCouleur,
                            fontSize: longueur * 0.020,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        suffixIcon: Icon(CupertinoIcons.rocket,
                            color: quatriemeCouleur),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(height: 70),
            ],
          ),
        ],
      ),
    );
  }

  Widget cadreFlou(Widget child) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          height: longueur * 0.07,
          width: largeur,
          color: Colors.white.withOpacity(0.3),
          child: child,
        ),
      ),
    );
  }

  Widget conversation(Widget child) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          height: longueur * 0.07,
          width: largeur * 0.700,
          color: Colors.black.withOpacity(0.3),
          child: child,
        ),
      ),
    );
  }
}
