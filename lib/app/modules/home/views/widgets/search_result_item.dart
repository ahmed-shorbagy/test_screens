import 'package:flutter/material.dart';
import 'package:test_screens/app/data/models/search_results_item_model.dart';
import 'package:test_screens/app/data/models/todo_projects_item_model.dart';
import 'package:test_screens/app/modules/home/views/widgets/approved_status_container.dart';
import 'package:test_screens/app/modules/home/views/widgets/circular_precentage_chart.dart';
import 'package:test_screens/app/modules/home/views/widgets/date_container.dart';
import 'package:test_screens/app/modules/home/views/widgets/need_to_review_status_container.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class SearchResultsItem extends StatelessWidget {
  const SearchResultsItem({
    super.key,
    required this.searchResultsITemModel,
  });
  final SearchResultsITemModel searchResultsITemModel;
  Color _getColor(ToDoStatus status) {
    switch (status) {
      case ToDoStatus.NeedToRieview:
        return const Color(0xffA70000);
      case ToDoStatus.Approved:
        return Colors.white;
      case ToDoStatus.NotComplated:
        return const Color(0xffFC9700);
      default:
        return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(
              color: _getColor(searchResultsITemModel.status), width: 1)),
      color: Colors.white,
      elevation: 4,
      child: Container(
        height: 62,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: _getColor(searchResultsITemModel.status).withOpacity(0.03),
            border: Border.all(
              color: _getColor(searchResultsITemModel.status),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              DateContainer(
                color: searchResultsITemModel.status == ToDoStatus.NeedToRieview
                    ? const Color(0xffA70000)
                    : const Color(0xff3D5058),
              ),
              const SizedBox(
                width: 13,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    searchResultsITemModel.title,
                    style: AppStyles.regular14,
                  ),
                  Text(
                    "Status : ${searchResultsITemModel.status.toString().split('.').last}",
                    style: AppStyles.regular12
                        .copyWith(color: const Color(0xff757575)),
                  ),
                ],
              ),
              const Spacer(),
              searchResultsITemModel.status == ToDoStatus.NeedToRieview
                  ? const NeedReviewStatusContainer()
                  : searchResultsITemModel.status == ToDoStatus.Approved
                      ? const ApprovedStatusContainer()
                      : CircularPercentageChart(
                          percentage: searchResultsITemModel.progress,
                          color: searchResultsITemModel.status ==
                                  ToDoStatus.NotComplated
                              ? Colors.red
                              : Colors.green,
                        ),
            ],
          ),
        ),
      ),
    );
  }
}
