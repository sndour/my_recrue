import 'entities/user.dart';

class Data {
  final User user;
  final String phoneNumber;
  final String email;
  const Data({
    required this.user,
    required this.phoneNumber,
    required this.email,
  });
}