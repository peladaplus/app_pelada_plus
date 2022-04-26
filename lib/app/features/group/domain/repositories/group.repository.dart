import 'package:dartz/dartz.dart';
import '../entities/group.entity.dart';
import '../exceptions/create_group.exception.dart';

abstract class IGroupRepository {
  Future<Either<CreateGroupException, GroupEntity>> save(GroupEntity group);
}
