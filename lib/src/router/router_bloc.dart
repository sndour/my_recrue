import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recrue/src/router/route_constants.dart';

abstract class RouterEvent {}

class PushEvent extends RouterEvent {
  final AppPage page;
  PushEvent(this.page);
}

class PopEvent extends RouterEvent {}

class PushNamedEvent extends RouterEvent {
  final AppPage page;
  PushNamedEvent(this.page);
}

class PushReplacementNamedEvent extends RouterEvent {
  final AppPage page;
  final Object? extra;
  PushReplacementNamedEvent(this.page, this.extra);
}

class ReplaceEvent extends RouterEvent {
  final AppPage page;
  ReplaceEvent(this.page);
}

class GoHomeEvent extends RouterEvent {}

class RouterBloc extends Bloc<RouterEvent, void> {
  final GoRouter _router;

  RouterBloc(this._router) : super(null) {
    on<PushEvent>((event, emit) {
      _router.push(event.page.routePath);
    });

    on<PopEvent>((event, emit) {
      _router.pop();
    });

    on<PushNamedEvent>((event, emit) {
      _router.pushNamed(event.page.routeName);
    });

    on<PushReplacementNamedEvent>((event, emit) {
      _router.pushReplacement(event.page.routePath, extra: event.extra);
    });

    on<ReplaceEvent>((event, emit) {
      _router.replace(event.page.routePath);
    });

    on<GoHomeEvent>((event, emit) {
      _router.push(AppPage.home.routePath);
    });
  }
}
