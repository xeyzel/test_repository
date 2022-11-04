import 'package:coba_flutter/src/screens/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final listSport = Provider.of<HomeViewModel>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(listSport.sport!.strSport),
        backgroundColor: Colors.amber.shade100,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              child: Image.network(
                listSport.sport!.strSportThumb,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 200),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          listSport.sport!.strSport,
                          style: const TextStyle(fontSize: 30),
                        ),
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage(listSport.sport!.strSportIconGreen),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      listSport.sport!.strSportDescription,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
