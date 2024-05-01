import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;

  const CustomListTile({
    super.key, 
    required this.title, 
    required this.subtitle, 
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(icon)
    );
  }
}