import 'dart:developer';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CreateStoryColorCubit extends Cubit<Color> {
  CreateStoryColorCubit() : super(Colors.grey);

  final List<Color> trendyColors = [
    const Color(0xFFFFD700), // Golden Yellow
    const Color(0xFF00BFFF), // Deep Sky Blue
    const Color(0xFFFFA07A), // Light Salmon
    const Color(0xFF7FFFD4), // Aquamarine
    const Color(0xFFFF6347), // Tomato Red
    const Color(0xFF32CD32), // Lime Green
    const Color(0xFFFF69B4), // Hot Pink
    const Color(0xFF87CEFA), // Light Sky Blue
    const Color(0xFFFF4500), // Orange Red
    const Color(0xFF6A5ACD), // Slate Blue
    const Color(0xFF98FB98), // Pale Green
    const Color(0xFFFFDAB9), // Peach Puff
    const Color(0xFFB0E0E6), // Powder Blue
    const Color(0xFFFA8072), // Salmon
    const Color(0xFFFF1493), // Deep Pink
    const Color(0xFFFFE4B5), // Moccasin
    const Color(0xFF00FA9A), // Medium Spring Green
    const Color(0xFF40E0D0), // Turquoise
    const Color(0xFFFFA500), // Orange
    const Color(0xFF7B68EE), // Medium Slate Blue
    const Color(0xFFF08080), // Light Coral
    const Color(0xFF4682B4), // Steel Blue
    const Color(0xFFFFC0CB), // Pink
    const Color(0xFF00CED1), // Dark Turquoise
    const Color(0xFF20B2AA), // Light Sea Green
    const Color(0xFFFF8C00), // Dark Orange
    const Color(0xFFF0E68C), // Khaki
    const Color(0xFFE6E6FA), // Lavender
    const Color(0xFFBA55D3), // Medium Orchid
    const Color(0xFF00FF7F), // Spring Green
  ];
  Random random = Random();
  void updateStatusColor() {
    int number = random.nextInt(trendyColors.length);
    emit(trendyColors[number]);
  }
}
