import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'Administration.dart';
import 'card_screen.dart';
import 'cart.dart';
import 'logout.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _currentIndex = 0;

  setCurrentPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [Administration(), Home(), Cart(), Logout()][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setCurrentPage(index),
        selectedItemColor: Colors.orange[300],
        unselectedItemColor: Colors.grey,
        iconSize: 32,
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.align_vertical_bottom_outlined),
            label: 'Administration',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Panier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Deconnexion',
          ),
        ],
      ),
    );
  }
}
