import 'dart:ui';

import 'package:connect_me/Colors/Couleurs.dart';
import 'package:connect_me/Pages/demarrage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_animation_helper/route_animation_helper.dart';

class MotDePasseoublie extends StatefulWidget {
  @override
  _MotDePasseoublieState createState() => _MotDePasseoublieState();
}

class _MotDePasseoublieState extends State<MotDePasseoublie> {
  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;    
    return Scaffold(
      body: Stack(
        children:<Widget>[
          Container(
            decoration:BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:[
                  degrade1,
                  degrade2,
                  degrade3,
                ]
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: longueur * 0.020,
                right: longueur * 0.020,
                top: longueur * 0.070),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        child: Icon(
                          CupertinoIcons.back,
                          color: quatriemeCouleur,
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
                              color: quatriemeCouleur,
                              fontSize: longueur * 0.018,
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: longueur * 0.050),
                  Center(
                    child: Text(
                      "Mot de passe oublié",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: quatriemeCouleur,
                          fontSize: longueur * 0.040,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: longueur * 0.030),
                  Center(
                    child: Text(
                      "Entrez votre email ou votre numéro de téléphone pour récuperer votre mot de passe",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: quatriemeCouleur,
                          fontSize: longueur * 0.018,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: longueur * 0.070),
                  Container(
                    child: cadreFlou(
                      Center(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: longueur * 0.030),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  color: quatriemeCouleur,
                                  fontSize: longueur * 0.020,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              icon: Icon(CupertinoIcons.mail_solid,
                                  color: quatriemeCouleur),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: longueur * 0.010),
                  Center(
                    child: GestureDetector( 
                    onTap: () {
                      Navigator.of(context).push(
                        RouteAnimationHelper.createRoute(
                            destination: MotDePasseoublie(),
                            animType: AnimType.slideStart,
                            duration: 450,
                            curve: Curves.ease),
                      );
                    },                    
                      child: Text(
                        "Ou",
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            color: quatriemeCouleur,
                            fontSize: longueur * 0.018,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),            
                  SizedBox(height: longueur * 0.010),    
                  Container(
                    child: cadreFlou(
                      Center(
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: longueur * 0.030),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Téléphone",
                              hintStyle: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  color: quatriemeCouleur,
                                  fontSize: longueur * 0.020,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              icon: Icon(CupertinoIcons.phone_circle_fill,
                                  color: quatriemeCouleur),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: longueur * 0.040),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        RouteAnimationHelper.createRoute(
                            destination: DemarragePage(),
                            animType: AnimType.slideBottom,
                            duration: 450,
                            curve: Curves.ease),
                      );
                    },
                    child: Container(
                      height: longueur * 0.070,
                      width: largeur,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: quatriemeCouleur,
                      ),
                      child: Center(
                        child: Text(
                          "Connexion",
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
            ),
          ),          
        ]
      ),

      
    );
    }
      Widget cadreFlou(Widget child) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
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
}


  

  