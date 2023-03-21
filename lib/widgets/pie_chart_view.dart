import 'package:doc/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class PieChartView extends StatelessWidget {
  const PieChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: LayoutBuilder(
        builder: (context, Constraints) => Container(
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  spreadRadius: -10,
                  blurRadius: 17,
                  offset: Offset(-5, -5),
                  color: Color.fromRGBO(146, 182, 216, 1),
                ),
                BoxShadow(
                  spreadRadius: -2,
                  blurRadius: 10,
                  offset: Offset(7, 7),
                  color: Color.fromRGBO(146, 182, 216, 1),
                ),
              ]),
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  width: Constraints.maxWidth * 0.85,
                  child: CustomPaint(
                    child: Center(),
                    foregroundPainter: PieChart(
                        categories: CategoryItems,
                        width: Constraints.maxWidth * 0.2),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
