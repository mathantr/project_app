import 'package:doc/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class ChartRight extends StatelessWidget {
  const ChartRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var category in CategoryItems)
            ExpenseCategory(
              text: category.name,
              index: CategoryItems.indexOf(category),
              amount: category.amount,
            ),
        ],
      ),
    );
  }
}

class ExpenseCategory extends StatelessWidget {
  final int index;
  final String text;
  final int amount;

  ExpenseCategory({
    required this.index,
    required this.text,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 3,
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              shape: BoxShape.rectangle,
              color: pieColor.elementAt(index % pieColor.length),
            ),
          ),
          Spacer(),
          Text(text),
          Spacer(),
          Text(amount.toString()),
        ],
      ),
    );
  }
}
