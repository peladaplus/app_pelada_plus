abstract class CreateGroupException {}

class GroupNotCreated extends CreateGroupException {
  final String? message;

  GroupNotCreated({this.message});
}
