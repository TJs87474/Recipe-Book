import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> recipe;

  DetailsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe['name'])),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(recipe['image'], height: 200, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(
              "Ingredients",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              recipe['ingredients'],
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              "Instructions",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              recipe['instructions'],
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

