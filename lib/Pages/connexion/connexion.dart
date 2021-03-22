import 'dart:ui';

import 'package:connect_me/Colors/Couleurs.dart';
import 'package:connect_me/Pages/Screens/Bar_de_navigation.dart';
import 'package:connect_me/Pages/connexion/email_connexion.dart';
import 'package:connect_me/Pages/connexion/inscription.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_animation_helper/route_animation_helper.dart';

class ConnexionPage extends StatefulWidget {
  @override
  _ConnexionPageState createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              image: DecorationImage(
                image: AssetImage("assets/images/arriere-plan.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: longueur / 2,
                width: largeur,
                decoration: BoxDecoration(
                  color: Colors.transparent,
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
                          "Rencontrez de,",
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
                          "nouveaux amis",
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
                          "Connectez-vous maintenant pour bénéficer de tous les fonctionnalités.",
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
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                    Navigator.of(context).push(
                      RouteAnimationHelper.createRoute(
                          destination: BarDeNavigation(),
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
                                color: premiereCouleur,
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
                                      "Continuer avec Facebook",
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
                          SizedBox(
                            height: longueur * 0.010,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                RouteAnimationHelper.createRoute(
                                    destination: EmailConnexionPage(),
                                    animType: AnimType.slideBottom,
                                    duration: 450,
                                    curve: Curves.ease),
                              );                              
                            },
                            child: Container(
                              height: longueur * 0.070,
                              width: largeur,
                              decoration: BoxDecoration(
                                color: quatriemeCouleur,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: quatriemeCouleur,
                                  width: largeur * 0.009,
                                ),
                              ),
                              child: Center(
                                child: Row(
                                  children: [
                                    Spacer(),
                                    Icon(
                                      CupertinoIcons.mail_solid,
                                      size: longueur * 0.030,
                                    ),
                                    Text(
                                      "Se connecter avec Email",
                                      style: GoogleFonts.raleway(
                                        textStyle: TextStyle(
                                            color: deuxiemeCouleur,
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
                          SizedBox(
                            height: longueur * 0.020,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                RouteAnimationHelper.createRoute(
                                    destination: InscriptionPage(),
                                    animType: AnimType.slideBottom,
                                    duration: 450,
                                    curve: Curves.ease),
                              );
                            },                            
                            child: RichText(
                              text: TextSpan(
                                text: "Vous n'avez pas de compte? ",
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                    color: quatriemeCouleur,
                                    fontSize: longueur * 0.018,
                                  ),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Inscrivez-vous',
                                    style: GoogleFonts.raleway(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: quatriemeCouleur,
                                        fontSize: longueur * 0.018,
                                      ),
                                    ),
                                  )
                                ],
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
