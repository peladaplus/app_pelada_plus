import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/entities/auth.entity.dart';
import '../../domain/exceptions/auth.exception.dart';
import '../../domain/repositories/auth.repository.dart';
import '../sources/auth.datasource.dart';

class AuthRepository implements IAuthRepository {
  final AuthDataSource _dataSource;

  AuthRepository(this._dataSource);

  @override
  Future<Either<AuthException, UserCredential>> createUser(
      AuthEntity authEntity) async {
    final Either result = await _dataSource.createUser(authEntity);

    return result.fold(
      (l) {
        if (l.code == 'email-already-in-use') {
          return Left(
              EmailInvalid('O email ${authEntity.email} já possui cadastro.'));
        }
        if (l.code == 'invalid-email') {
          return Left(
              EmailInvalid('O email ${authEntity.email} não é válido.'));
        }
        if (l.code == 'weak-password') {
          return Left(
              PasswordIncorrect('A senha possui menos de 6 caracteres.'));
        }
        return Left(
            LoginNotAvailable('Cadastro não realizado. Tente novamente.'));
      },
      (r) => Right(r),
    );
  }

  @override
  Future<Either<AuthException, UserCredential>> signIn(
      AuthEntity authEntity) async {
    final Either result = await _dataSource.signIn(authEntity);

    return result.fold((l) {
      if (l.code == 'invalid-email') {
        return Left(
            EmailInvalid('O email ${authEntity.email} não possui cadastro.'));
      }
      if (l.code == 'wrong-password') {
        return Left(PasswordIncorrect('A senha está incorreta.'));
      }
      return Left(LoginNotAvailable('Login não realizado. Tente novamente.'));
    }, (r) => Right(r));
  }

  @override
  Future<Either<AuthException, String>> signOut() async {
    final Either result = await _dataSource.signOut();

    return result.fold(
        (l) => Left(LoginNotAvailable(
            'Não foi possível realizar o sign out. Tente novamente')),
        (r) => const Right('Sign Out realizado com sucesso'));
  }

  @override
  User? getUser() {
    return _dataSource.getUser();
  }
}
