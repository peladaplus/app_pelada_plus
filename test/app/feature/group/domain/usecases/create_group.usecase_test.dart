// import 'package:app_pelada_plus/app/features/group/domain/entities/group.entity.dart';
// import 'package:app_pelada_plus/app/features/group/domain/exceptions/create_group.exception.dart';
// import 'package:app_pelada_plus/app/features/group/domain/repositories/group.repository.dart';
// import 'package:app_pelada_plus/app/features/group/domain/usecases/create_group.usecase.dart';
// import 'package:dartz/dartz.dart';
// import 'package:faker_dart/faker_dart.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// class MockGroupRepository extends Mock implements IGroupRepository {}
//
// class MockCreateGroupException extends Mock implements CreateGroupException {}
//
// void main() {
//   late IGroupRepository repository;
//   late CreateGroupUseCase useCase;
//   late Faker faker;
//   late GroupEntity entity;
//
//   setUp(() {
//     repository = MockGroupRepository();
//     useCase = CreateGroupUseCase(repository);
//     faker = Faker.instance;
//     entity = GroupEntity(
//       name: faker.company.companyName(),
//       image: faker.image.image(),
//       frequency: faker.date.weekday(),
//       gameType: GameType.soccer,
//       selfEvaluation: true,
//     );
//   });
//
//   test('Should return Right with success message', () async {
//     when(() => repository.save(entity))
//         .thenAnswer((_) async => Right(entity));
//
//     final result = await useCase(entity);
//
//     expect(result, isA<Right>());
//     expect(result, const Right('Group created successfully'));
//   });
//
//   test('Should return Left with GroupNotCreatedException', () async {
//     when(() => repository.save(entity))
//         .thenAnswer((_) async => Left(MockCreateGroupException()));
//
//     final result = await useCase(entity);
//
//     expect(result, isA<Left>());
//     expect(result.fold(id, id), isA<GroupNotCreated>());
//   });
// }
