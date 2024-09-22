import 'package:flutter/material.dart';

class AllEmpty extends StatefulWidget {
  const AllEmpty({super.key});

  @override
  State<AllEmpty> createState() => _AllEmpty();
}

class _AllEmpty extends State<AllEmpty> {
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
