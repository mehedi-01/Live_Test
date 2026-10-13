import 'package:flutter/material.dart';

class LiveTest extends StatelessWidget {
  const LiveTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Live app view',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),

    );
  }
}
