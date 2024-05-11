import 'package:apresentacao_pi/features/categories/categories_page.dart';
import 'package:apresentacao_pi/features/categories/contacts_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<String> _appBarTitles = ['Home', 'Perfil', 'Contato'];

  var pages = [
    const CategoriesPage(),
    Container(color: Colors.orange),
    const ContactForm(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      drawer: const Drawer(),
      body: Expanded(child: pages[_selectedIndex]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            selectedIcon: Icon(Icons.home),
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outlined),
            label: 'Perfil',
            selectedIcon: Icon(Icons.person),
          ),
          NavigationDestination(
            icon: Icon(Icons.mail_outline),
            label: 'Contato',
            selectedIcon: Icon(Icons.mail),
          ),
        ],
      ),
      // bottomNavigationBar: Bo,
    );
  }
}