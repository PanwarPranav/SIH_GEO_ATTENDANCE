import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyMapPage extends StatefulWidget {
  final int index;

  const MyMapPage(this.index, {super.key});

  @override
  State<MyMapPage> createState() => _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
        backgroundColor: const Color(0xFF8967B3),
      ),
      bottomNavigationBar: GNav(
        tabBackgroundColor: const Color(0xFF8967b3),
        activeColor: const Color(0xFFE6D9A2),
        backgroundColor: const Color(0xFF8967b3),
        gap: 15,
        selectedIndex: 0, // Map is active
        onTabChange: (index) {
          if (index == 0) {
            // Stay on Map
          } else if (index == 1) {
            Navigator.pushNamed(context, 'details');
          } else if (index == 2) {
            Navigator.pushNamed(context, 'leave');
          } else if (index == 3) {
            Navigator.pushNamed(context, 'login');
          }
        },
        tabs: const [
          GButton(
            icon: Icons.map,
            text: 'Map',
          ),
          GButton(
            icon: Icons.person,
            text: 'Employees',
          ),
          GButton(
            icon: Icons.messenger_outlined,
            text: 'Requests',
          ),
          GButton(
            icon: Icons.logout_rounded,
            text: 'Log Out',
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Map Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
