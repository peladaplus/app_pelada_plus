abstract class DeleteGroupExceptions implements Exception {}

class GroupNotDeleted extends DeleteGroupExceptions {
  final String? message;

  GroupNotDeleted({this.message});
}