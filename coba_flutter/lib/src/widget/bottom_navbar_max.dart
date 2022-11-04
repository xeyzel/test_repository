import 'package:flutter/material.dart';

class BotNavBarMax extends StatelessWidget {
  const BotNavBarMax({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.amber.shade50,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home_outlined,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.sports_soccer,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 90),
            child: IconButton(
              icon: const Icon(
                Icons.person_outline_outlined,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
