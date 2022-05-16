import 'package:dartz/dartz.dart';

import '../entities/group.entity.dart';

abstract class IGroupRepository {
  Future<Either<Exception, GroupEntity>> save(GroupEntity group);

  Future<Either<Exception, List<GroupEntity>>> getGroups();

  Future<Either<Exception, GroupEntity>> getGroupById(int id);

  Future<Either<Exception, String>> delete(int id);

  Future<Either<Exception, String>> update(GroupEntity group);
}
