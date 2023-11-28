import 'package:flutter/material.dart';

class CounterArea extends StatefulWidget {
  const CounterArea({super.key});

  @override
  State<CounterArea> createState() => _CounterAreaState();
}

class _CounterAreaState extends State<CounterArea> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'นับ : $count',
          style: TextStyle(fontSize: 60),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            count += 1;
            print('OK : $count');
            setState(() {});
          },
          child: SizedBox(
            width: 200,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.add_box_rounded,
                  size: 50,
                ),
                Text(
                  'เพิ่ม',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
