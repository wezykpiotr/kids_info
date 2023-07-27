import 'package:flutter/material.dart';

class ChildTile extends StatelessWidget {
  final String tabName;
  final tileColor;
  final String imageName;
  final double borderRadius = 12;
  final String? value;

  const ChildTile({
    super.key,
    required this.tabName,
    required this.tileColor,
    required this.imageName,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: tileColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              child: Image.asset(imageName),
            ),
            Text(
              value.toString(),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                tabName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
