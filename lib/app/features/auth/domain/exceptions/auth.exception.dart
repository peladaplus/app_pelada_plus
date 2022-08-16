abstract class AuthException implements Exception {
  final String message;

  AuthException(this.message);
}

class EmailInvalid extends AuthException {
  EmailInvalid(super.message);
}

class PasswordIncorrect extends AuthException {
  PasswordIncorrect(super.message);
}

class LoginNotAvailable extends AuthException {
  LoginNotAvailable(super.message);
}

class UserNotAvailable extends AuthException {
  UserNotAvailable(super.message);
}
