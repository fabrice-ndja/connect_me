import 'package:connect_me/Colors/Couleurs.dart';
import 'package:connect_me/Pages/Accueil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:route_animation_helper/route_animation_helper.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      RouteAnimationHelper.createRoute(
          destination: Accueil(),
          animType: AnimType.fade,
          duration: 450,
          curve: Curves.ease),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/images/$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    final longueur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Découverte",
          body:
              "Vous allez découvrir de nouvelles cultures dont vous ignorez l'existance.",
          image: _buildImage('onboarding1.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Retrouvailles",
          body:
              "Retrouvez des milliers de personnes en ligne, y compris vos amis proches de vous.",
          image: _buildImage('onboarding2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Tendances",
          body:
              "Soyez au premier horloge des actualités pres de vous et partout dans le monde",
          image: _buildImage('onboarding3.jpg'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text('PASSER',
          style: GoogleFonts.raleway(
              textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: premiereCouleur,
            fontSize: longueur * 0.018,
          ),),),
      next: Icon(
        CupertinoIcons.arrow_right,
        color: premiereCouleur,
      ),
      done: Text('DÉMARRER',
          style: GoogleFonts.raleway(
              textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: premiereCouleur,
            fontSize: longueur * 0.018,
          ))),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: premiereCouleur,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
