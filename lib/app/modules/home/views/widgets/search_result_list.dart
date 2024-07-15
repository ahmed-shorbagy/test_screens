import 'package:flutter/material.dart';
import 'package:test_screens/app/data/models/search_results_item_model.dart';
import 'package:test_screens/app/data/models/todo_projects_item_model.dart';
import 'package:test_screens/app/modules/home/views/widgets/search_result_item.dart';

class SearchReultList extends StatelessWidget {
  const SearchReultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<SearchResultsITemModel> searchResultItemList = [
      SearchResultsITemModel(
          progress: 10, title: "Saturday", status: ToDoStatus.Inprogress),
      SearchResultsITemModel(
          progress: 73, title: "Saturday", status: ToDoStatus.NotComplated),
      SearchResultsITemModel(
          progress: 0, title: "Saturday", status: ToDoStatus.NeedToRieview),
      SearchResultsITemModel(
          progress: 100, title: "Saturday", status: ToDoStatus.Approved),
      SearchResultsITemModel(
          progress: 100, title: "Saturday", status: ToDoStatus.Approved),
      SearchResultsITemModel(
          progress: 100, title: "Saturday", status: ToDoStatus.Approved),
      SearchResultsITemModel(
          progress: 100, title: "Saturday", status: ToDoStatus.Approved),
      SearchResultsITemModel(
          progress: 100, title: "Saturday", status: ToDoStatus.Approved),
    ];
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        ...searchResultItemList
            .map((e) => SearchResultsItem(searchResultsITemModel: e)),
      ],
    );
  }
}
