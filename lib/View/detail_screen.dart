import 'package:coorona_virus/View/world_state.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      todayDeaths,
      test;
  DetailScreen({
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.active,
    required this.critical,
    required this.todayRecovered,
    required this.todayDeaths,
    required this.test,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.white12.withOpacity(.01),
        centerTitle: true,
        title: Text(widget.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  color: Colors.grey,
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .06),
                      ReUsableRow(
                          title: 'Cases', value: widget.totalCases.toString()),
                      ReUsableRow(
                          title: 'Deaths',
                          value: widget.totalDeaths.toString()),
                      ReUsableRow(
                          title: 'Recovered',
                          value: widget.totalRecovered.toString()),
                      ReUsableRow(
                          title: 'Critical', value: widget.critical.toString()),
                      ReUsableRow(
                          title: 'Today Recoveered',
                          value: widget.todayRecovered.toString()),
                      ReUsableRow(
                          title: 'TodayDeaths',
                          value: widget.todayDeaths.toString()),
                      ReUsableRow(
                          title: 'Tests', value: widget.test.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                  radius: 50, backgroundImage: NetworkImage(widget.image)),
            ],
          )
        ],
      ),
    );
  }
}
