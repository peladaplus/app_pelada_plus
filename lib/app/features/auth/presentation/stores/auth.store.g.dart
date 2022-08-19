// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on AuthStoreBase, Store {
  late final _$userAtom = Atom(name: 'AuthStoreBase.user', context: context);

  @override
  UserCredential? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserCredential? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$statusScreenAtom =
      Atom(name: 'AuthStoreBase.statusScreen', context: context);

  @override
  StatusScreen get statusScreen {
    _$statusScreenAtom.reportRead();
    return super.statusScreen;
  }

  @override
  set statusScreen(StatusScreen value) {
    _$statusScreenAtom.reportWrite(value, super.statusScreen, () {
      super.statusScreen = value;
    });
  }

  late final _$exceptionAtom =
      Atom(name: 'AuthStoreBase.exception', context: context);

  @override
  AuthException? get exception {
    _$exceptionAtom.reportRead();
    return super.exception;
  }

  @override
  set exception(AuthException? value) {
    _$exceptionAtom.reportWrite(value, super.exception, () {
      super.exception = value;
    });
  }

  late final _$isLoginAtom =
      Atom(name: 'AuthStoreBase.isLogin', context: context);

  @override
  bool get isLogin {
    _$isLoginAtom.reportRead();
    return super.isLogin;
  }

  @override
  set isLogin(bool value) {
    _$isLoginAtom.reportWrite(value, super.isLogin, () {
      super.isLogin = value;
    });
  }

  late final _$signInAsyncAction =
      AsyncAction('AuthStoreBase.signIn', context: context);

  @override
  Future<void> signIn(AuthEntity authEntity) {
    return _$signInAsyncAction.run(() => super.signIn(authEntity));
  }

  late final _$createUserAsyncAction =
      AsyncAction('AuthStoreBase.createUser', context: context);

  @override
  Future<void> createUser(AuthEntity authEntity) {
    return _$createUserAsyncAction.run(() => super.createUser(authEntity));
  }

  late final _$signOutAsyncAction =
      AsyncAction('AuthStoreBase.signOut', context: context);

  @override
  Future<void> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  late final _$AuthStoreBaseActionController =
      ActionController(name: 'AuthStoreBase', context: context);

  @override
  void setIsLogin(bool isLogin) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
        name: 'AuthStoreBase.setIsLogin');
    try {
      return super.setIsLogin(isLogin);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  User? getUser() {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
        name: 'AuthStoreBase.getUser');
    try {
      return super.getUser();
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
statusScreen: ${statusScreen},
exception: ${exception},
isLogin: ${isLogin}
    ''';
  }
}
