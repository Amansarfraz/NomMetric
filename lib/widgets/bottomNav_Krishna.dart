import 'package:flutter/material.dart';

class BottomNavKrishna extends StatefulWidget {
  const BottomNavKrishna({super.key});

  @override
  State<BottomNavKrishna> createState() => _BottomNavKrishnaState();
}

class _BottomNavKrishnaState extends State<BottomNavKrishna> {
  // 1. Variable to track which tab is currently selected (0, 1, or 2)
  int _selectedIndex = 0;

  // 2. The List of "Placeholder" screens to show
  // (In a real app, these would be separate Screen widgets like HomeScreen(), MenuScreen(), etc.)
  static const List<Widget> _pages = <Widget>[
    // Tab 0: Home
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.home_rounded, size: 64, color: Colors.blueAccent),
          SizedBox(height: 16),
          Text(
            "Home Feed",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
    // Tab 1: Menu
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.restaurant_menu_rounded, size: 64, color: Colors.orange),
          SizedBox(height: 16),
          Text(
            "Mess Menu",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
    // Tab 2: Profile
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person_rounded, size: 64, color: Colors.purple),
          SizedBox(height: 16),
          Text(
            "Student Profile",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  ];

  // 3. Function to handle tap events
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The Body changes based on _selectedIndex
      body: _pages[_selectedIndex],

      // The Navigation Bar at the bottom
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        elevation: 3.0,
        backgroundColor: Colors.white,
        indicatorColor:
            Colors.blue.shade100, // The "Pill" color behind selected icon
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home_rounded, color: Colors.blue),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.restaurant_menu),
            selectedIcon: Icon(
              Icons.restaurant_menu_rounded,
              color: Colors.orange,
            ),
            label: 'Menu',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person_rounded, color: Colors.purple),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
