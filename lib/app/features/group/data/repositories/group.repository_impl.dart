import 'package:dartz/dartz.dart';

import '../../domain/entities/group.entity.dart';
import '../../domain/exceptions/create_group.exception.dart';
import '../../domain/repositories/group.repository.dart';
import '../sources/group.datasource.dart';

class GroupRepository implements IGroupRepository {
  final GroupDataSource _dataSource;

  GroupRepository(this._dataSource);

  @override
  Future<Either<CreateGroupException, GroupEntity>> save(
      GroupEntity group) async {
    return await _dataSource.save(group);
  }
}
