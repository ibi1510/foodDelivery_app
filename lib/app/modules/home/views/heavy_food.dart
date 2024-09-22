import 'package:flutter/material.dart';

class HeavyFood extends StatefulWidget {
  const HeavyFood({super.key});

  @override
  State<HeavyFood> createState() => _HeavyFoodState();
}

class _HeavyFoodState extends State<HeavyFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('empty fastfood'),
        centerTitle: true,
      ),
    );
  }
}
