import 'package:flutter/material.dart';
import 'package:tune_player/models/tune_mode.dart';
import 'package:tune_player/widgets/tune_widget.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffE53740), sound: 'sounds/note1.wav'),
    TuneModel(color: Color(0xffEC9247), sound: 'sounds/note2.wav'),
    TuneModel(color: Color(0xffF8EE76), sound: 'sounds/note3.wav'),
    TuneModel(color: Color(0xff4FBC69), sound: 'sounds/note4.wav'),
    TuneModel(color: Color(0xff33A188), sound: 'sounds/note5.wav'),
    TuneModel(color: Color(0xff379FE0), sound: 'sounds/note6.wav'),
    TuneModel(color: Color(0xff93289F), sound: 'sounds/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2B343B),
        centerTitle: true,
        title: const Text('Flutter Tune'),
        elevation: 0,
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
