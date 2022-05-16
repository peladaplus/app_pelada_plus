import 'package:dartz/dartz.dart';

import '../entities/group.entity.dart';
import '../exceptions/update_group.exception.dart';
import '../repositories/group.repository.dart';

class UpdateGroupUseCase {
  final IGroupRepository _repository;

  UpdateGroupUseCase(this._repository);

  Future<Either<UpdateGroupException, String>> call(GroupEntity group) async {
    final result = await _repository.update(group);

    return result.fold(
      (l) => Left(
        GroupNotUpdated(message: 'Could not update group with id ${group.id}'),
      ),
      (r) => Right('Group with $id updated successfully'),
    );
  }
}
