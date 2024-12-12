import 'package:flutter/material.dart';

class ThemeToggleButton extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onToggle;

  const ThemeToggleButton({
    Key? key,
    required this.isDarkMode,
    required this.onToggle,
  }) : super(key: key);

  @override
  _ThemeToggleButtonState createState() => _ThemeToggleButtonState();
}

class _ThemeToggleButtonState extends State<ThemeToggleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onToggle,
      child: AnimatedSwitcher(
        duration: const Duration(seconds: 500),
        transitionBuilder: (child, animation) {
          return RotationTransition(
            turns: animation.drive(
              Tween<double>(begin: 0.5, end: 1.0),
            ),
            child: child,
          );
        },
        child: widget.isDarkMode
            ? Icon(
                Icons.nightlight_round,
                key: const ValueKey("moon"),
                color: Colors.yellow,
                size: 30,
              )
            : Icon(
                Icons.wb_sunny,
                key: const ValueKey("sun"),
                color: Colors.orange,
                size: 30,
              ),
      ),
    );
  }
}
