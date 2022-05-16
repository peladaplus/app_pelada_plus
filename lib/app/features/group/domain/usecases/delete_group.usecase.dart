import 'package:dartz/dartz.dart';

import '../exceptions/delete_group.exception.dart';
import '../repositories/group.repository.dart';

class DeleteGrupUseCase {
  final IGroupRepository _repository;

  DeleteGrupUseCase(this._repository);

  Future<Either<DeleteGroupExceptions, String>> call(int id) async {
    final result = await _repository.delete(id);

    return result.fold(
      (l) =>
          Left(GroupNotDeleted(message: 'The group with the id $id not found')),
      (r) => Right('Group with $id deleted successfully'),
    );
  }
}
