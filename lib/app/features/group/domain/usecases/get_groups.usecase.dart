import 'package:dartz/dartz.dart';

import '../entities/group.entity.dart';
import '../exceptions/get_groups.exception.dart';
import '../repositories/group.repository.dart';

class GetGroupsUseCase {
  final IGroupRepository _repository;

  GetGroupsUseCase(this._repository);

  Future<Either<GetGroupsException, List<GroupEntity>>> call() async {
    final result = await _repository.getGroups();

    return result.fold(
      (l) => Left(UserWithoutGroups(message: 'No groups found for this user')),
      (r) => Right(r),
    );
  }
}
