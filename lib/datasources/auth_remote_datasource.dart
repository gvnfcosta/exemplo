import 'package:dio/dio.dart';
import 'package:exemplo/models/user.dart';

class AuthRemoteDatassource {
  final Dio dio = Dio();

  User? getCurrentUser() {
    return User('Giovanni Fleiter DaCosta');
  }
}
