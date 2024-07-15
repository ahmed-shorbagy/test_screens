import 'package:flutter/material.dart';
import 'package:test_screens/app/data/models/todo_projects_item_model.dart';
import 'package:test_screens/core/utils/app_styles.dart';

class ToDoProjectsItem extends StatelessWidget {
  const ToDoProjectsItem({
    super.key,
    required this.toDoProjectsItemModel,
  });
  final ToDoProjectsItemModel toDoProjectsItemModel;
  Color _getColor(ToDoStatus status) {
    switch (status) {
      case ToDoStatus.NeedToRieview:
        return const Color(0xffA70000);
      case ToDoStatus.Approved:
        return Colors.white;
      case ToDoStatus.NotComplated:
        return const Color(0xffFC9700);
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(
              color: _getColor(toDoProjectsItemModel.status), width: 1)),
      color: Colors.white,
      elevation: 4,
      child: Container(
        height: 62,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: _getColor(toDoProjectsItemModel.status).withOpacity(0.03),
            border: Border.all(
              color: _getColor(toDoProjectsItemModel.status),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          toDoProjectsItemModel.image,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    toDoProjectsItemModel.title,
                    style: AppStyles.regular14,
                  ),
                  Text(
                    toDoProjectsItemModel.subtitle,
                    style: AppStyles.regular12
                        .copyWith(color: const Color(0xff9C9C9C)),
                  )
                ],
              ),
              const Spacer(),
              Text(
                toDoProjectsItemModel.status.toString().split('.').last,
                style: AppStyles.regular12.copyWith(
                  color: _getColor(toDoProjectsItemModel.status),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
