import 'package:connect_me/Colors/Couleurs.dart';
import 'package:connect_me/Pages/demarrage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_animation_helper/route_animation_helper.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.photo_camera_solid,
              color: premiereCouleur, size: 30),
          onPressed: () {},
        ),
        title: Text(
          "Feed",
          style: GoogleFonts.lato(
            textStyle: TextStyle(
                color: cinquiemeCouleur,
                fontSize: longueur * 0.025,
                fontWeight: FontWeight.w800),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.add, color: premiereCouleur, size: 30),
            onPressed: () {
              Navigator.of(context).push(
                RouteAnimationHelper.createRoute(
                    destination: DemarragePage(),
                    animType: AnimType.slideBottom,
                    duration: 450,
                    curve: Curves.ease),
              );
            },
          ),
          IconButton(
            icon:
                Icon(CupertinoIcons.ellipsis, color: premiereCouleur, size: 30),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: quatriemeCouleur,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: longueur * 0.020),
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        storieCadre(
                            "assets/images/add.png", premiereCouleur, "Story"),
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
                  SizedBox(height: longueur * 0.030),
                  post("assets/profil/fabrice.png", "assets/images/image1.jpg",
                      "5098", "789", "1755"),
                  post("assets/profil/elsa.png", "assets/images/image2.jpg",
                      "456", "34", "5"),
                  post("assets/profil/noelle.png", "assets/images/image3.jpg",
                      "567", "978", "87"),
                  post("assets/profil/kra.png", "assets/images/image7.jpg",
                      "123", "23", "9"),
                  post("assets/profil/imma.png", "assets/images/image1.jpg",
                      "5098", "789", "1755"),
                ],
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

  Widget post(String imageProfil, String imagePost, String nombreVu,
      String nombreLike, String nombreCommentaire) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            height: longueur * 0.060,
            width: largeur,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: longueur * 0.010),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(imageProfil),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(CupertinoIcons.ellipsis,
                        color: sixiemeCouleur, size: 30),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: longueur * 0.200,
            width: largeur,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePost),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: longueur * 0.060,
            width: largeur,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: longueur * 0.010),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(CupertinoIcons.eye,
                        color: sixiemeCouleur, size: 30),
                    onPressed: () {},
                  ),
                  Text(
                    nombreVu,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: cinquiemeCouleur,
                        fontSize: longueur * 0.017,
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(CupertinoIcons.heart_fill,
                        color: Colors.red, size: 30),
                    onPressed: () {},
                  ),
                  Text(
                    nombreLike,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: cinquiemeCouleur,
                        fontSize: longueur * 0.017,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  IconButton(
                    icon: Icon(CupertinoIcons.chat_bubble_text,
                        color: sixiemeCouleur, size: 30),
                    onPressed: () {},
                  ),
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
          ),
        ],
      ),
    );
  }
}
