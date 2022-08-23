import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/enums/status_screen.enum.dart';
import '../../domain/entities/auth.entity.dart';
import '../../domain/exceptions/auth.exception.dart';
import '../../domain/usecases/create_user.usecase.dart';
import '../../domain/usecases/get_user.usecase.dart';
import '../../domain/usecases/sign_in.usecase.dart';
import '../../domain/usecases/sign_out.usecase.dart';

part 'auth.store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase with Store {
  final SignInUseCase _signInUseCase;
  final SignOutUseCase _signOutUseCase;
  final CreateUserUseCase _createUserUseCase;
  final GetUserUseCase _getUserUseCase;

  @observable
  UserCredential? user;

  @observable
  late StatusScreen statusScreen = StatusScreen.idle;

  @observable
  AuthException? exception;

  @observable
  bool isLogin = true;

  AuthStoreBase(
    this._signInUseCase,
    this._signOutUseCase,
    this._createUserUseCase,
    this._getUserUseCase,
  );

  @action
  void setIsLogin(bool isLogin) {
    this.isLogin = isLogin;
  }

  @action
  Future<void> signIn(AuthEntity authEntity) async {
    statusScreen = StatusScreen.loading;

    final Either result = await _signInUseCase(authEntity);

    result.fold(
      (l) {
        exception = l;
        statusScreen = StatusScreen.error;
      },
      (r) {
        user = r;
        statusScreen = StatusScreen.success;
      },
    );
  }

  @action
  Future<void> createUser(AuthEntity authEntity) async {
    statusScreen = StatusScreen.loading;

    final Either result = await _createUserUseCase(authEntity);

    result.fold(
      (l) {
        exception = l;
        statusScreen = StatusScreen.error;
      },
      (r) {
        user = r;
        statusScreen = StatusScreen.success;
      },
    );
  }

  @action
  Future<void> signOut() async {
    statusScreen = StatusScreen.loading;

    final Either result = await _signOutUseCase();

    result.fold(
      (l) {
        exception = l;
        statusScreen = StatusScreen.error;
      },
      (r) {
        statusScreen = StatusScreen.success;
      },
    );
  }

  @action
  User? getUser() {
    return _getUserUseCase();
  }
}
