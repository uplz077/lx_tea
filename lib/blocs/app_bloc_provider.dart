import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// desc: Bloc提供器包裹层
///
class AppBlocProvider extends StatefulWidget {
  final Widget child;

  const AppBlocProvider({super.key, required this.child});

  @override
  State createState() => _AppBlocProviderState();
}

class _AppBlocProviderState extends State<AppBlocProvider> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [], child: widget.child);
  }

  @override
  void dispose() {
    // AppStorage().close();
    super.dispose();
  }
}
