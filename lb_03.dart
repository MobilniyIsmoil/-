import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book Screen')),
      body: Center(child: Text('This is the Book Screen')),
    );
  }
}

class JournalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Journal Screen')),
      body: Center(child: Text('This is the Journal Screen')),
    );
  }
}

class ElResourceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ElResource Screen')),
      body: Center(child: Text('This is the ElResource Screen')),
    );
  }
}