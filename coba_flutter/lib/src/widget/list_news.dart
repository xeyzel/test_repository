import 'package:coba_flutter/src/models/sport/sport_model.dart';
import 'package:coba_flutter/src/screens/detail/detail_screen.dart';
import 'package:coba_flutter/src/screens/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListNews extends StatelessWidget {
  final Iterable<SportModel> sports;
  const ListNews({super.key, required this.sports});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(builder: (context, value, child) {
      return ListView.separated(
        // scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final sport = sports.elementAt(index);
          return ListTile(
            onTap: () {
              context.read<HomeViewModel>().selectedSport(sport);

              Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return SlideTransition(
                        position: animation.drive(
                          Tween(
                              begin: const Offset(1.0, 0.0), end: Offset.zero),
                        ),
                        child: child,
                      );
                    },
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return const DetailScreen();
                    },
                  ));
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(sport.strSportThumb),
              radius: 30,
            ),
            title: Text(sport.strSport),
            subtitle: Text(
              sport.strSportDescription,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage(
                sport.strSportIconGreen,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(height: 20),
        itemCount: sports.length,
      );
    });
  }
}
