import 'package:exemplo/models/user.dart';
import 'package:exemplo/repositories/auth_repository.dart';

class SessionManager {
  SessionManager() {
    _getCurrentUser();
  }

  final AuthRepository authRepository = AuthRepository();

  User? user;

  void _getCurrentUser() {
    user = authRepository.getCurrentUser();
  }
}
