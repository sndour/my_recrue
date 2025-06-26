import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_recrue/src/feature/authentication/presentation/bloc/authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());
}
