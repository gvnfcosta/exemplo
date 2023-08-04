import 'package:exemplo/datasources/auth_local_datasource.dart';
import 'package:exemplo/datasources/auth_remote_datasource.dart';
import 'package:exemplo/models/user.dart';

final AuthRemoteDatassource remoteDatasource = AuthRemoteDatassource();
final AuthLocalDatassource localDatasource = AuthLocalDatassource();

class AuthRepository {
  User? getCurrentUser() {
    User? user = localDatasource.getCurrentUser();
    // user ??= remoteDatasource.getCurrentUser(); //se null faz a atribuição
    return user;
  }
}
