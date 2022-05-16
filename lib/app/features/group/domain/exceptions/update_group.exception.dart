abstract class UpdateGroupException implements Exception {}

class GroupNotUpdated extends UpdateGroupException {
  final String? message;

  GroupNotUpdated({this.message});
}
