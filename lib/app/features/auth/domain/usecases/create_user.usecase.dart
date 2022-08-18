import 'package:app_pelada_plus/app/features/auth/domain/exceptions/auth.exception.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../entities/auth.entity.dart';
import '../repositories/auth.repository.dart';

class CreateUserUseCase {
  final IAuthRepository _repository;

  CreateUserUseCase(this._repository);

  Future<Either<AuthException, UserCredential>> call(AuthEntity authEntity) async {
    final Either result = await _repository.createUser(authEntity);

    return result.fold(
      (l) => Left(l),
      (r) => Right(r),
    );
  }
}
