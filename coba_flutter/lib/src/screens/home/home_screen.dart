import 'package:coba_flutter/src/models/sport/sport_model.dart';
import 'package:coba_flutter/src/models/sport/api/sport_api.dart';
import 'package:coba_flutter/src/screens/home/home_view_model.dart';
import 'package:coba_flutter/src/widget/bottom_navbar_max.dart';
import 'package:coba_flutter/src/widget/drawer_max.dart';
import 'package:coba_flutter/src/widget/error_max.dart';
import 'package:coba_flutter/src/widget/list_news.dart';
import 'package:coba_flutter/src/widget/loading_max.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final SportApi _sportApi = SportApi();

  // List<SportModel> _sports = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(
        maxRadius: 30,
        child: InkWell(
          onTap: () {},
          child: const Icon(Icons.search),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      appBar: AppBar(
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.sports_outlined),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
        title: const Text('NT-NT Sport'),
      ),
      bottomNavigationBar: const BotNavBarMax(),
      endDrawer: const DrawerMax(),
      body: Builder(builder: (context) {
        return Consumer<HomeViewModel>(
          builder: (context, value, child) {
            switch (value.state) {
              case ActionState.loading:
                return const LoadingMax();

              case ActionState.none:
                return ListNews(sports: value.sports);

              case ActionState.error:
                return const ErrorPro();
            }
          },
        );
      }),
    );
  }
}
