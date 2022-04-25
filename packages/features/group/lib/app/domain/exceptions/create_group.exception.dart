abstract class CreateGroupException implements Exception {}

class GroupNotCreated extends CreateGroupException {
  final String? message;

  GroupNotCreated({this.message});
}
