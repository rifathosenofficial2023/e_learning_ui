import 'package:flutter/material.dart';

class NavBarViews extends StatefulWidget {
  const NavBarViews({super.key});

  @override
  State<NavBarViews> createState() => _NavBarViewsState();
}

class _NavBarViewsState extends State<NavBarViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        
      ]),
    );
  }
}