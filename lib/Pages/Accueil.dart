import 'package:connect_me/Colors/Couleurs.dart';
import 'package:connect_me/Pages/connexion/connexion.dart';
import 'package:connect_me/Pages/connexion/inscription.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_animation_helper/route_animation_helper.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return new Scaffold(
      body: new Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/image7.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: longueur * 0.40,
                width: largeur,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        degrade1,
                        degrade2,
                        degrade4,
                        degrade3,
                        degrade1,
                      ]),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: longueur * 0.040),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: longueur * 0.030,
                      ),
                      Center(
                        child: Text(
                          "Être ensemble,",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: quatriemeCouleur,
                              fontSize: longueur * 0.040,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "partout, à proximité",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: quatriemeCouleur,
                              fontSize: longueur * 0.040,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: longueur * 0.020,
                      ),
                      Center(
                        child: Text(
                          "Retrouvez vos proches à proximité de vous en un clic et partagez de bon moment.",
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: quatriemeCouleur,
                              fontSize: longueur * 0.018,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: longueur * 0.040,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                RouteAnimationHelper.createRoute(
                                    destination: ConnexionPage(),
                                    animType: AnimType.slideBottom,
                                    duration: 450,
                                    curve: Curves.ease),
                              );
                            },
                            child: Container(
                              height: longueur * 0.070,
                              width: largeur * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: quatriemeCouleur,
                                  width: largeur * 0.009,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Connexion",
                                  style: GoogleFonts.raleway(
                                    textStyle: TextStyle(
                                        color: quatriemeCouleur,
                                        fontSize: longueur * 0.022,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                RouteAnimationHelper.createRoute(
                                    destination: InscriptionPage(),
                                    animType: AnimType.slideBottom,
                                    duration: 450,
                                    curve: Curves.ease),
                              );
                            },
                            child: Container(
                              height: longueur * 0.070,
                              width: largeur * 0.4,
                              decoration: BoxDecoration(
                                color: quatriemeCouleur,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: quatriemeCouleur,
                                  width: largeur * 0.009,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Inscription",
                                  style: GoogleFonts.raleway(
                                    textStyle: TextStyle(
                                        color: deuxiemeCouleur,
                                        fontSize: longueur * 0.022,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
