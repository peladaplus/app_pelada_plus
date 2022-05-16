import 'package:dartz/dartz.dart';

import '../entities/group.entity.dart';
import '../exceptions/get_groups.exception.dart';
import '../repositories/group.repository.dart';

class GetGroupByIdUseCase {
  final IGroupRepository _repository;

  GetGroupByIdUseCase(this._repository);

  Future<Either<GetGroupsException, GroupEntity>> call(int id) async {
    final result = await _repository.getGroupById(id);

    return result.fold(
      (l) =>
          Left(GroupNotFound(message: 'The group with the id $id not found')),
      (r) => Right(r),
    );
  }
}
