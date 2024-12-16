
import 'package:flutter/material.dart';

class HomeViewCreateStoryCardIcon extends StatelessWidget {
  const HomeViewCreateStoryCardIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Center(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(999)),
            child: Icon(
              Icons.add,
              color: Theme.of(context).primaryColor,
            )),
      ),
    );
  }
}
