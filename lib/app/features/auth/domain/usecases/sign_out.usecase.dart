import 'package:app_pelada_plus/app/features/auth/domain/exceptions/auth.exception.dart';
import 'package:dartz/dartz.dart';

import '../repositories/auth.repository.dart';

class SignOutUseCase {
  final IAuthRepository _repository;

  SignOutUseCase(this._repository);

  Future<Either<AuthException, String>> call() async {
    final Either result = await _repository.signOut();

    return result.fold(
      (l) => Left(l),
      (r) => Right(r),
    );
  }
}
