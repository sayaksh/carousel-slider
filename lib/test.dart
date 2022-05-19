import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<Map<String, dynamic>> data = [
    {
      'card_no': '*****4013',
      'amount': '\$2,562',
      'bgcolor': Colors.white,
      'icon': const Icon(Icons.circle_rounded)
    },
    {
      'card_no': '*****1941',
      'amount': '\$144,99',
      'bgcolor': Colors.red,
      'icon': const Icon(Icons.circle_rounded)
    },
    {
      'card_no': '*****6132',
      'amount': '\$2,562',
      'bgcolor': Colors.orange,
      'icon': const Icon(Icons.circle_rounded)
    },
    {
      'card_no': '*****9090',
      'amount': '\$2,562',
      'bgcolor': Colors.blue,
      'icon': const Icon(Icons.circle_rounded)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (c, i) {
          return Item(
            name: data[i]['card_no'],
            amount: data[i]['amount'],
          );
        });
  }
}

class Item extends StatelessWidget {
  const Item({Key? key, required this.name, required this.amount})
      : super(key: key);
  final String name;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
            flex: 3,
            child: Center(
              child: Text("data"),
            )),
        Expanded(
            flex: 2,
            child: Center(
              child: Text("data"),
            )),
        Expanded(
            flex: 5,
            child: Center(
              child: Text("data"),
            )),
      ],
    );
  }
}
