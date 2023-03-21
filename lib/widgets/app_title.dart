import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(231, 240, 240, 249),
            child: TabBar(
              indicatorColor: Color.fromARGB(255, 24, 60, 223),
              labelColor: Color.fromARGB(255, 24, 60, 223),
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'To Do',
                ),
                Tab(
                  text: 'Active',
                ),
                Tab(
                  text: 'Review',
                ),
                Tab(
                  text: 'Completed',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
