import 'package:coba_flutter/src/screens/home/home_screen.dart';
import 'package:coba_flutter/src/screens/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // primaryColor: Colors.cyan,
          primarySwatch: Colors.amber,
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
