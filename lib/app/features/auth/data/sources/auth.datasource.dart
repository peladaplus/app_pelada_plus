import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/entities/auth.entity.dart';

class AuthDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<Either<FirebaseAuthException, UserCredential>> createUser(
      AuthEntity authEntity) async {
    try {
      return Right(await _auth.createUserWithEmailAndPassword(
        email: authEntity.email,
        password: authEntity.password,
      ));
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }

  Future<Either<FirebaseAuthException, UserCredential>> signIn(
      AuthEntity authEntity) async {
    try {
      return Right(await _auth.signInWithEmailAndPassword(
        email: authEntity.email,
        password: authEntity.password,
      ));
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }

  Future<Either<FirebaseAuthException, String>> signOut() async {
    try {
      await _auth.signOut();
      return const Right('SignOut successfully');
    } on FirebaseAuthException catch (e) {
      return Left(e);
    }
  }

  User? getUser() {
    try {
      return _auth.currentUser;
    } on FirebaseAuthException catch (_) {
      rethrow;
    }
  }
}
