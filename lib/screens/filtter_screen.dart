import 'package:flutter/material.dart';
import 'package:mealappmax/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your filter"),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("hello"),
      ),
    );
  }
}
