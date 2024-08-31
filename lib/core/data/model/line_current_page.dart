import 'package:flutter/material.dart';

class LineCurrentPage {
  final int id;
  late Color color;
  late double width;
  LineCurrentPage({
    required this.id,
    required this.color,
    required this.width,
  });
}

final List<LineCurrentPage> listLineCurrentPage = [
  LineCurrentPage(id: 1, color: Colors.grey, width: 40),
  LineCurrentPage(id: 2, color: Colors.grey, width: 40),
  LineCurrentPage(id: 3, color: Colors.grey, width: 40),
];
