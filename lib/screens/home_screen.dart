import 'package:doc/widgets/chart_right.dart';
import 'package:doc/widgets/pie_chart_view.dart';
import 'package:doc/widgets/projects.dart';
import 'package:doc/widgets/teams.dart';
import 'package:flutter/material.dart';

import '../widgets/app_title.dart';
import '../widgets/todo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 75,
        //   elevation: 0.9,
        //   leading: IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.keyboard_arrow_left,
        //         size: 45,
        //         color: Colors.black,
        //       )),
        //   title: Text(
        //     'Projects',
        //     style: TextStyle(color: Colors.black),
        //   ),
        //   actions: [
        //     Center(
        //       child: Padding(
        //         padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
        //         child: InkWell(
        //           onTap: () {},
        //           child: Text(
        //             'Create Project',
        //             textScaleFactor: 1.5,
        //             style: TextStyle(
        //               backgroundColor: Color.fromARGB(255, 22, 16, 183),
        //               color: Colors.white,
        //             ),
        //           ),
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                blurRadius: 2,
              ),
            ]),
            child: Container(
              color: Colors.white,
              height: 110,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2, top: 66),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      size: 30,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, top: 70),
                    child: Text(
                      'Projects',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 200,
                      top: 66,
                    ),
                    child: Container(
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 37, 33, 243)),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 5),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 8,
                              left: 32,
                            ),
                            child: Text(
                              'Create Projects',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 365, top: 66),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                            )
                          ]),
                      child: Icon(Icons.search),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Container(
              width: double.infinity,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: '184',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                        children: [
                          TextSpan(
                              text: ' Projects',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black))
                        ]),
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      PieChartView(),
                      ChartRight(),
                    ],
                  )),
                ],
              ),
            ),
          ),
          Teams(),
          SizedBox(
            height: 15,
          ),
          Projects(),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up)),
              Text(
                'Hide Details',
                style: TextStyle(color: Color.fromRGBO(38, 89, 255, 1)),
              ),
            ],
          ),
          AppTitle(),
          Todo(),
        ],
      ),
    ));
  }
}
