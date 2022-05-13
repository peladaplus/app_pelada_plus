import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/group.entity.dart';
import '../../domain/exceptions/create_group.exception.dart';

class GroupDataSource {
  final Dio _dio;

  GroupDataSource(this._dio);

  Future<Either<CreateGroupException, GroupEntity>> save(
      GroupEntity group) async {
    final response = await _dio.post(
        // 'https://run.mocky.io/v3/1b51159a-683c-47cc-9f23-055ddfca0018',
      'http://localhost:8080/group',
        data: group.toJson());
    if (response.statusCode == 201) {
      return Right(GroupEntity.fromJson(response.data));
    } else {
      return Left(DataSourceException());
    }
  }
}
