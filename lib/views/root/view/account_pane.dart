import "package:flutter/material.dart";

class AccountPane extends StatelessWidget {
  const AccountPane({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Tab Account pane')],
        ),
      ),
    );
  }
}
