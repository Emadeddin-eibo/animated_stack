import 'package:flutter/material.dart';

class RowPlaceholder extends StatelessWidget {
  final int color;
  const RowPlaceholder({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
    );
  }
}
