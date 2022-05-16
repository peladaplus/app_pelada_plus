import 'package:app_pelada_plus/app/features/group/data/exceptions/datasource.exception.dart';
import 'package:app_pelada_plus/app/features/group/data/repositories/group.repository_impl.dart';
import 'package:app_pelada_plus/app/features/group/data/sources/group.datasource.dart';
import 'package:app_pelada_plus/app/features/group/domain/entities/group.entity.dart';
import 'package:app_pelada_plus/app/features/group/domain/repositories/group.repository.dart';
import 'package:dartz/dartz.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGroupDataSource extends Mock implements GroupDataSource {}

void main() {
  late IGroupRepository _repository;
  late GroupDataSource _dataSource;
  late Faker _faker;
  late GroupEntity _entity;

  setUp(() {
    _dataSource = MockGroupDataSource();
    _repository = GroupRepository(_dataSource);
    _faker = Faker.instance;
    _entity = GroupEntity(
      name: _faker.company.companyName(),
      image: _faker.image.image(),
      frequency: _faker.date.weekday(),
      gameType: GameType.soccer,
      selfEvaluation: true,
    );
  });

  test('Should return Right with GroupEntity', () async {
    when(() => _dataSource.save(_entity))
        .thenAnswer((_) async => Right(_entity));

    final result = await _repository.save(_entity);

    expect(result, isA<Right>());
    expect(result.fold(id, id), isA<GroupEntity>());
  });

  test('Should return Left with DataSourceException', () async {
    when(() => _dataSource.save(_entity)).thenAnswer(
      (_) async => Left(
        RequestError(message: '', statusCode: 401),
      ),
    );

    final result = await _repository.save(_entity);

    expect(result, isA<Left>());
    expect(result.fold(id, id), isA<DataSourceException>());
  });
}
