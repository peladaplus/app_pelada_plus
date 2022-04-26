import 'package:app_pelada_plus/app/features/group/domain/entities/group.entity.dart';
import 'package:app_pelada_plus/app/features/group/domain/exceptions/create_group.exception.dart';
import 'package:app_pelada_plus/app/features/group/domain/repositories/group.repository.dart';
import 'package:app_pelada_plus/app/features/group/domain/usecases/create_group.usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGroupRepository extends Mock implements IGroupRepository {}

class MockCreateGroupException extends Mock implements CreateGroupException {}

void main() {
  late IGroupRepository _repository;
  late CreateGroupUseCase _useCase;
  late Faker _faker;
  late GroupEntity _entity;

  setUp(() {
    _repository = MockGroupRepository();
    _useCase = CreateGroupUseCase(_repository);
    _faker = Faker.instance;
    _entity = GroupEntity(
      name: _faker.company.companyName(),
      image: _faker.image.image(),
      frequency: _faker.date.weekday(),
      gameType: GameType.soccer,
      selfEvaluation: true,
    );
  });

  test('Should return Right with success message', () async {
    when(() => _repository.save(_entity))
        .thenAnswer((_) async => Right(_entity));

    final result = await _useCase(_entity);

    expect(result, isA<Right>());
    expect(result, const Right('Group created successfully'));
  });

  test('Should return Left with GroupNotCreatedException', () async {
    when(() => _repository.save(_entity))
        .thenAnswer((_) async => Left(MockCreateGroupException()));

    final result = await _useCase(_entity);

    expect(result, isA<Left>());
    expect(result.fold(id, id), isA<GroupNotCreated>());
  });
}
