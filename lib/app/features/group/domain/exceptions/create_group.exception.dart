abstract class CreateGroupException implements Exception {}

class GroupNotCreated extends CreateGroupException {
  final String? message;

  GroupNotCreated({this.message});
}

class DataSourceException extends CreateGroupException {
  final String? message;

  DataSourceException({this.message});
}
