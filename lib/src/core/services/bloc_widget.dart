import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:my_recrue/src/core/theme/brightness_theme/brightness_bloc.dart';

class BlocWidget extends StatefulWidget {
  final GoRouter router;
  const BlocWidget({super.key, required this.child, required this.router});

  final Widget child;

  @override
  State<BlocWidget> createState() => _BlocWidgetState();
}

class _BlocWidgetState extends State<BlocWidget> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BrightnessBloc>(create: (context) => BrightnessBloc()),

        //BlocProvider<RouterBloc>(create: (context) => RouterBloc(widget.router)),
      ],
      child: widget.child,
    );
  }
}
