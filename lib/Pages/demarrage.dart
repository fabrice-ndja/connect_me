import 'package:connect_me/Colors/Couleurs.dart';
import 'package:connect_me/Pages/connexion/connexion.dart';
import 'package:connect_me/Pages/connexion/inscription.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_animation_helper/route_animation_helper.dart';

class DemarragePage extends StatefulWidget {
  @override
  _DemarragePageState createState() => _DemarragePageState();
}

class _DemarragePageState extends State<DemarragePage> {
  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: longueur * 0.020,
              right: longueur * 0.020,
            ),
            child: Column(
              children: [
                SizedBox(height: longueur * 0.040),
                Row(
                  children: [
                    GestureDetector(
                      child: Icon(
                        CupertinoIcons.back,
                        color: premiereCouleur,
                        size: longueur * 0.030,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    GestureDetector(
                      child: Text(
                        "Retour",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: premiereCouleur,
                            fontSize: longueur * 0.018,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    TextButton(
                      child: Text(
                        "Passer",
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: premiereCouleur,
                            fontSize: longueur * 0.018,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: longueur * 0.050),
                Image.asset(
                  "assets/profil/fabrice.png",
                  height: longueur * 0.160,
                ),
                SizedBox(height: longueur * 0.020),
                Center(
                  child: Text(
                    "Trouver des amis",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        color: deuxiemeCouleur,
                        fontSize: longueur * 0.040,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: longueur * 0.020),
                Row(
                  children: [
                    Image.asset(
                      "assets/profil/christy.png",
                      height: longueur * 0.070,
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/profil/elsa.png",
                      height: longueur * 0.070,
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/profil/imma.png",
                      height: longueur * 0.070,
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/profil/noelle.png",
                      height: longueur * 0.070,
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/profil/kra.png",
                      height: longueur * 0.070,
                    ),
                    Spacer(),
                    Image.asset(
                      "assets/profil/rose.png",
                      height: longueur * 0.070,
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: longueur * 0.180),
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
                    decoration: BoxDecoration(
                      color: premiereCouleur,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Ajouter un contact",
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
                SizedBox(height: longueur * 0.020),
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
                              width: largeur,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: sixiemeCouleur,
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Spacer(),
                                    Image.asset(
                                      "assets/icones/facebook.png",
                                      height: longueur * 0.050,
                                      width: largeur * 0.050,
                                    ),
                                    Text(
                                      "Ajouter avec Facebook",
                                      style: GoogleFonts.raleway(
                                        textStyle: TextStyle(
                                            color: quatriemeCouleur,
                                            fontSize: longueur * 0.022,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Spacer(),
                                  ],
                                ),
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
