import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recherche')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: TextField(decoration: InputDecoration(labelText: 'Rechercher')),
      ),
    );
  }
}
