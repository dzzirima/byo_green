import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Irrigation extends StatefulWidget {
  const Irrigation({Key? key}) : super(key: key);

  @override
  State<Irrigation> createState() => _IrrigationState();
}

class _IrrigationState extends State<Irrigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}
