// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ThemeToggleButton extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onToggle;

  const ThemeToggleButton({
    super.key,
    required this.isDarkMode,
    required this.onToggle,
  });

  @override
  _ThemeToggleButtonState createState() => _ThemeToggleButtonState();
}

class _ThemeToggleButtonState extends State<ThemeToggleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onToggle,
      child: widget.isDarkMode
          ? const Icon(
              Icons.nightlight_round,
              key: ValueKey("moon"),
              color: Colors.yellow,
              size: 30,
            )
          : const Icon(
              Icons.wb_sunny,
              key: ValueKey("sun"),
              color: Colors.orange,
              size: 30,
            ),
    );
  }
}
