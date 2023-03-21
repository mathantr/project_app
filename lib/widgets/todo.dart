import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    shape: BoxShape.rectangle,
                    color: Color.fromARGB(255, 21, 9, 239),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'To Do',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.1)),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 5),
                        child: Text('Priority'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90, top: 3),
                        child: Icon(Icons.keyboard_arrow_down),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.1),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Container(
                      height: 20,
                      width: 20,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.withOpacity(0.5),
                        ),
                        child: Center(
                            child: Text(
                          '1',
                          style: TextStyle(
                              color: Color.fromARGB(255, 28, 46, 240)),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 50),
                    child: Text(
                      'High',
                      style: TextStyle(color: Color.fromARGB(255, 28, 46, 240)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 250),
                    child: Text(
                      'June 26-28,2020',
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 25),
                    child: Text(
                      'Management Activities Completed',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70.0, left: 25),
                    child: Text(
                      'Discharge Insulation Concrete Forms',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4), fontSize: 12),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
