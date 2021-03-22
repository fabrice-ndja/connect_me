import 'package:bottom_navigation_badge/bottom_navigation_badge.dart';
import 'package:connect_me/Colors/Couleurs.dart';
import 'package:connect_me/Pages/Screens/case_des_pages/Messages.dart';
import 'package:connect_me/Pages/Screens/case_des_pages/amis.dart';
import 'package:connect_me/Pages/Screens/case_des_pages/feed.dart';
import 'package:connect_me/Pages/Screens/case_des_pages/profil.dart';
import 'package:connect_me/Pages/Screens/case_des_pages/reglages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarDeNavigation extends StatefulWidget {
  @override
  _BarDeNavigationState createState() => _BarDeNavigationState();
}

class _BarDeNavigationState extends State<BarDeNavigation>
    with TickerProviderStateMixin {
  TextEditingController _textEditingController = new TextEditingController();
  BottomNavigationBadge badger = new BottomNavigationBadge(
      backgroundColor: Colors.red,
      badgeShape: BottomNavigationBadgeShape.circle,
      textColor: Colors.white,
      position: BottomNavigationBadgePosition.topRight,
      textSize: 8);

  //  Création des blocs des pages
  final Feed _feed = Feed();
  final Amis _amis = Amis();
  final Messages _messages = Messages();
  final Reglages _reglages = Reglages();
  final Profil _profil = Profil();

  Widget _voirLesPages = Feed();
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.flame_fill), title: Text("Feed")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person_2_alt), title: Text("Amis")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.chat_bubble_2_fill), title: Text("Messages")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.settings_solid), title: Text("Réglages")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person_alt_circle), title: Text("Profil"))
  ];
  int dropdownSelected = 0;

  int _current = 0;
  
  _defilement(int page) {
    switch (page) {
      case 0:
        return _feed;
        break;
      case 1:
        return _amis;
        break;
      case 2:
        return _messages;
        break;
      case 3:
        return _reglages;
        break;
      case 4:
        return _profil;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _voirLesPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: sixiemeCouleur,
        selectedItemColor: premiereCouleur,
        currentIndex: _current,
        onTap: (changer) {
          setState(() {
            _voirLesPages = _defilement(changer);
            _current = changer;
          });
        },
        items: items,
      ),
    );
  }
}
