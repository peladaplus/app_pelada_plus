import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/group.entity.dart';
import '../../domain/exceptions/create_group.exception.dart';
import '../models/group.dto.dart';

class GroupDataSource {
  final Dio _dio;

  GroupDataSource(this._dio);

  Future<Either<CreateGroupException, GroupEntity>> save(
      GroupEntity group) async {
    final response = await _dio.post('mock', data: group.toJson());
    if (response.statusCode == 201) {
      return Right(GroupDto.fromJson(response.data));
    } else {
      return Left(DataSourceException());
    }
  }
}
