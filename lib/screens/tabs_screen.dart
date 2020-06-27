import 'package:flutter/material.dart';
import 'package:mealappmax/screens/categories_screen.dart';
import 'package:mealappmax/screens/favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
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
  }
}
