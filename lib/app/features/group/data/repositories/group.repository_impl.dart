import 'package:dartz/dartz.dart';

import '../../domain/entities/group.entity.dart';
import '../../domain/repositories/group.repository.dart';
import '../exceptions/datasource.exception.dart';
import '../sources/group.datasource.dart';

class GroupRepository implements IGroupRepository {
  final GroupDataSource _dataSource;

  GroupRepository(this._dataSource);

  @override
  Future<Either<DataSourceException, GroupEntity>> save(
      GroupEntity group) async {
    return await _dataSource.save(group);
  }

  @override
  Future<Either<DataSourceException, String>> delete(int id) async {
    return await _dataSource.delete(id);
  }

  @override
  Future<Either<DataSourceException, GroupEntity>> getGroupById(int id) async {
    return await _dataSource.getGroupById(id);
  }

  @override
  Future<Either<DataSourceException, List<GroupEntity>>> getGroups() async {
    return await _dataSource.getGroups();
  }

  @override
  Future<Either<DataSourceException, String>> update(GroupEntity group) async {
    return await _dataSource.update(group);
  }
}
