import "dart:async";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:lx_tea/router/routes/route_types.dart";

class AppSplashPage extends StatefulWidget {
  const AppSplashPage({super.key});

  @override
  State<AppSplashPage> createState() => _AppSplashPageState();
}

class _AppSplashPageState extends State<AppSplashPage> {
  int _countdown = 2;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _countdown--;
      });
      if (_countdown == 0) {
        _timer.cancel();
        context.go(AppRoute.root.url);
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('欢迎使用', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            Text(
              '$_countdown秒后进入应用',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
