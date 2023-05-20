import 'package:flutter/material.dart';

abstract class Grafico extends StatefulWidget {
  const Grafico({super.key, required this.pontos});

  final double margin = 8.0;
  final List<MapEntry<dynamic, double>> pontos;

  Widget retrato({final Widget? child}) {
    return Padding(padding: EdgeInsets.all(margin), child: child);
  }
}
