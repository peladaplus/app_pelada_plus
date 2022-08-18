import 'package:firebase_auth/firebase_auth.dart';

import '../repositories/auth.repository.dart';

class GetUserUseCase {
  final IAuthRepository _repository;

  GetUserUseCase(this._repository);

  User? call() {
    return _repository.getUser();
  }
}
