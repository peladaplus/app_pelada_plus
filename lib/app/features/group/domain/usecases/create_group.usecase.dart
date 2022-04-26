import 'package:dartz/dartz.dart';

import '../entities/group.entity.dart';
import '../exceptions/create_group.exception.dart';
import '../repositories/group.repository.dart';

class CreateGroupUseCase {
  final IGroupRepository _repository;

  CreateGroupUseCase(this._repository);

  Future<Either<CreateGroupException, String>> call(GroupEntity group) async {
    final result = await _repository.save(group);

    return result.fold(
      (l) => Left(
        GroupNotCreated(
          message: 'Could not create group ${group.name.toUpperCase()}',
        ),
      ),
      (r) => const Right('Group created successfully'),
    );
  }
}
