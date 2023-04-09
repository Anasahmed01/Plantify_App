import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  bool isClicked = false;
  gestureDetector() {
    return GestureDetector(
      onTap: () {
        rebuildUi();
        isClicked = !isClicked;
      },
      child: Icon(
        Icons.favorite,
        color: isClicked ? Colors.red : Colors.grey,
      ),
    );
  }

  void closeDrawer(BuildContext context) {
    Navigator.of(context).pop();
  }
}
