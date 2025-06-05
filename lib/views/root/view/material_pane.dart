import "package:flutter/material.dart";

class MaterialPane extends StatelessWidget {
  const MaterialPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Tab Material')],
        ),
      ),
    );
  }
}
