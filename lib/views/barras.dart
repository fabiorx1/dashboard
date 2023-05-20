import 'package:dashboard/views/grafico.dart';
import 'package:flutter/material.dart';

class Barras extends Grafico {
  const Barras({super.key, required super.pontos});
  final barPadding = 8.0;
  @override
  State<StatefulWidget> createState() => _BarrasState();
}

class _BarrasState extends State<Barras> with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _ctrl.addListener(() => setState(() {}));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _ctrl.forward();
  }

  @override
  Widget build(BuildContext context) {
    return widget.retrato(
        child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.pontos.length,
      itemBuilder: (ctx, i) => Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: SizedBox(
              width: 20,
              height: _ctrl.value * widget.pontos.elementAt(i).value,
              child: const Material(color: Colors.pink)),
        ),
      ),
    ));
  }
}
