import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  String title;
  String subtitle;

  SingleItem({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
