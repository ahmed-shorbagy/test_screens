import 'package:test_screens/app/data/models/todo_projects_item_model.dart';

class SearchResultsITemModel {
  String title;
  ToDoStatus status;
  double progress;
  SearchResultsITemModel(
      {required this.title, required this.status, required this.progress});
}
