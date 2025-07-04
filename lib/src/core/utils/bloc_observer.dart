import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recrue/src/core/utils/logger.dart';

class AppBlocObserver extends BlocObserver {
  /// {@macro app_bloc_observer}
  AppBlocObserver();

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);

    ///We can check, if the BlocBase is a Bloc or a Cubit
    if (bloc is Cubit) {
      L.log('''
        {
          "This is a Cubit =>",
          "bloc": "$bloc",
        }''');
    } else {
      L.log('''
        {
          "This is a bloc =>",
          "bloc": "$bloc",
        }''');
    }
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    L.log('''
        {
          "an event Happened in =>": "$bloc",
          "the event is": "$event",
        }''');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    L.log('''
        {
          "onChange =>": "$change",
          "bloc": "$bloc",
        }''');
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    L.log('''
        {
          "transition": "${transition}",
          "bloc": "$bloc",
        }''');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    L.log('''
        {
          "bloc": "$bloc",
          "error": "${error}",
          "stackTrace": "${stackTrace}",
        }''');
  }

  ///We can even run something, when we close our Bloc
  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    L.log('''
        {
          "BLOC is closed": "$bloc",
        }''');
  }
}
