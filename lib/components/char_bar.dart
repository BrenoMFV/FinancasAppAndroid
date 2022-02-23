import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  // final _recentTransactions;
  final String label;
  final double value;
  final double percentage;

  // ChartBar(this._recentTransactions);
  ChartBar({
    required this.label,
    required this.value,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        children: <Widget>[
          const Text(
            'R\$',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Container(
            height: 20,
            child: FittedBox(
              child: Text('${value.toStringAsFixed(2)}'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 60,
            width: 10,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    color: Color.fromRGBO(220, 220, 220, 1),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: percentage,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(label)
        ],
      ),
    );
  }
}
