import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/entities/group.entity.dart';
import '../../../../core/network/exceptions/datasource.exception.dart';

class GroupDataSource {
  final Dio _dio;

  GroupDataSource(this._dio);

  Future<Either<DataSourceException, GroupEntity>> save(
      GroupEntity group) async {
    try {
      final response =
          await _dio.post('http://localhost:8080/group', data: group.toJson());
      if (response.statusCode == 201) {
        return Right(GroupEntity.fromJson(response.data));
      } else {
        return Left(
          RequestError(response.data, statusCode: response.statusCode!),
        );
      }
    } on DioError catch (error) {
      debugPrint(error.message);
      return Left(ApiError(error.error.toString()));
    }
  }

  Future<Either<DataSourceException, List<GroupEntity>>> getGroups() async {
    try {
      final response = await _dio.get('http://localhost:8080/group');
      if (response.statusCode == 200) {
        return Right((response.data[''] as List)
            .map((group) => GroupEntity.fromJson(group))
            .toList());
      } else {
        return Left(
          RequestError(response.data, statusCode: response.statusCode!),
        );
      }
    } on DioError catch (error) {
      debugPrint(error.message);
      return Left(ApiError(error.error.toString()));
    }
  }

  Future<Either<DataSourceException, GroupEntity>> getGroupById(int id) async {
    try {
      final response = await _dio.get('http://localhost:8080/group/$id');
      if (response.statusCode == 200) {
        return Right(GroupEntity.fromJson(response.data));
      } else {
        return Left(
          RequestError(response.data, statusCode: response.statusCode!),
        );
      }
    } on DioError catch (error) {
      debugPrint(error.message);
      return Left(ApiError(error.error.toString()));
    }
  }

  Future<Either<DataSourceException, String>> delete(int id) async {
    try {
      final response = await _dio.delete('http://localhost:8080/group/$id');
      if (response.statusCode == 204) {
        return Right('Group with $id deleted successfully');
      } else {
        return Left(
          RequestError(response.data, statusCode: response.statusCode!),
        );
      }
    } on DioError catch (error) {
      debugPrint(error.message);
      return Left(ApiError(error.error.toString()));
    }
  }

  Future<Either<DataSourceException, String>> update(GroupEntity group) async {
    try {
      final response =
          await _dio.patch('http://localhost:8080/group/${group.id}');
      if (response.statusCode == 204) {
        return Right('Group with $id updated successfully');
      } else {
        return Left(
          RequestError(response.data, statusCode: response.statusCode!),
        );
      }
    } on DioError catch (error) {
      debugPrint(error.message);
      return Left(ApiError(error.error.toString()));
    }
  }
}
