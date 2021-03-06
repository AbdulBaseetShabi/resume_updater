import 'package:flutter/material.dart';
import 'package:resume_updater/screens/contact.dart';
import 'package:resume_updater/screens/experience.dart';
import 'package:resume_updater/screens/introduction.dart';
import 'package:resume_updater/screens/profile.dart';
import 'package:resume_updater/screens/projects.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<BottomNavigationBarItem> _navItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    BottomNavigationBarItem(
        icon: Icon(Icons.business_center), label: "Experience"),
    BottomNavigationBarItem(icon: Icon(Icons.library_books), label: "Projects"),
    BottomNavigationBarItem(
        icon: Icon(Icons.perm_contact_calendar), label: "Contact")
  ];

  final List<Widget> _navPages = [
    Introduction(),
    Profile(),
    Experience(),
    Projects(),
    Contact()
  ];
  int _currentNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navPages[_currentNavigation],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _navItems,
        currentIndex: _currentNavigation,
        onTap: (index) {
          setState(() {
            _currentNavigation = index;
          });
        },
        backgroundColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
    );
  }
}
