import "package:flutter/material.dart";

class HomePane extends StatelessWidget {
  const HomePane({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Tab home pane')],
        ),
      ),
    );
  }
}
