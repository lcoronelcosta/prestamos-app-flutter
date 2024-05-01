import 'package:flutter/material.dart';

class Options {
  final String title;
  final String subtitle;
  final IconData icon;
  final String? url;

  Options({
    required this.title, 
    required this.subtitle, 
    required this.icon,
    this.url
  });
}