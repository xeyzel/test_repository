import 'package:flutter/material.dart';

class DrawerMax extends StatelessWidget {
  const DrawerMax({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 500),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            // bottomLeft: Radius.circular(100),
            Radius.circular(8),
          ),
          child: Drawer(
            width: 200,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('MENU'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('MENU'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('MENU'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('MENU'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
