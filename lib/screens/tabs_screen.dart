import 'package:flutter/material.dart';
import 'package:mealappmax/screens/favourite_screen.dart';
import 'package:mealappmax/widgets/main_drawer.dart';

import 'categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      "page": CategoriesScreen(),
      "title": "Categories",
    },
    {
      "page": FavouritesScreen(),
      "title": "Favourites",
    }
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text("Categories")),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text("Favourites")),
        ],
      ),
    );
  }
}

// TODO : DEFAULT TAB CONTROLLER

/**
 *
    return DefaultTabController(
    length: 2,
    initialIndex: 0, // TODO : WHEN APP IS START
    child: Scaffold(
    appBar: AppBar(
    title: Text('meals'),
    bottom: TabBar(
    indicatorColor: Colors.red,
    labelColor: Colors.white,
    tabs: <Widget>[
    Tab(
    icon: Icon(Icons.category),
    text: "Categories",
    ),
    Tab(
    icon: Icon(Icons.star),
    text: "Favourite",
    ),
    ],
    ),
    ),
    body: TabBarView(
    children: <Widget>[CategoriesScreen(), FavouritesScreen()],
    ),
    ),
    );

 */
