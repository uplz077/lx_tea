import "package:flutter/material.dart";

class TrendPane extends StatelessWidget {
  const TrendPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Trend Pane')],
        ),
      ),
    );
  }
}
