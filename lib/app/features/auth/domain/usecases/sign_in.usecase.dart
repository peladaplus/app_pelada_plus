import 'package:app_pelada_plus/app/features/auth/domain/exceptions/auth.exception.dart';

import '../entities/auth.entity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../repositories/auth.repository.dart';

class SignInUseCase {
  final IAuthRepository _repository;

  SignInUseCase(this._repository);

  Future<Either<AuthException, UserCredential>> call(AuthEntity authEntity) async {
    final Either result = await _repository.signIn(authEntity);

    return result.fold(
      (l) => Left(l),
      (r) => Right(r),
    );
  }
}
