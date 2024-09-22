import 'package:flutter/material.dart';

class Platter extends StatefulWidget {
  const Platter({super.key});

  @override
  State<Platter> createState() => _PlatterState();
}

class _PlatterState extends State<Platter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empty page'),
        centerTitle: true,
      ),
    );
  }
}
