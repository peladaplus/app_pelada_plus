abstract class GetGroupsException implements Exception {}

class UserWithoutGroups extends GetGroupsException {
  final String? message;

  UserWithoutGroups({this.message});
}

class GroupNotFound extends GetGroupsException {
  final String? message;

  GroupNotFound({this.message});
}