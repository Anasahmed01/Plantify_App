import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  bool isClicked = false;
  gestureDetector() {
    return GestureDetector(
      onTap: () {
        if (isClicked == true) {
          isClicked = false;
        } else {
          isClicked = true;
        }
        rebuildUi();
      },
      child: Icon(
        Icons.favorite_outlined,
        size: 40,
        color: isClicked ? Colors.black : Colors.black45,
      ),
    );
  }

  void closeDrawer(BuildContext context) {
    Navigator.of(context).pop();
  }
}
