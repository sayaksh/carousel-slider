import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key,
      required this.cardNo,
      required this.amount,
      required this.color,
      required this.icon})
      : super(key: key);
  final String cardNo;
  final String amount;

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.redAccent),
          Text(cardNo),
          Text(amount),
        ],
      ),
    );
  }
}
