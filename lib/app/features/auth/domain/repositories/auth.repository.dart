import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../entities/auth.entity.dart';
import '../exceptions/auth.exception.dart';

abstract class IAuthRepository {
  Future<Either<AuthException, UserCredential>> createUser(
      AuthEntity authEntity);

  Future<Either<AuthException, UserCredential>> signIn(AuthEntity authEntity);

  Future<Either<AuthException, String>> signOut();
  User? getUser();
}
