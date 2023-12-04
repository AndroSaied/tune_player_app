
import 'package:flutter/material.dart';
import 'package:tune_player/models/tune_mode.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});

  final TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}