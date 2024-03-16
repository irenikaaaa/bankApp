import 'package:flutter/material.dart';

class TransitionItems extends StatelessWidget {
  VoidCallback onTab;
  IconData icon;
  Color color;
  String remark;
  String total;
  String time;
  String date;

  TransitionItems({
    super.key,
    required this.onTab,
    required this.color,
    required this.icon,
    required this.date,
    required this.remark,
    required this.time,
    required this.total,
  });

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: GestureDetector(
        onTap: () => onTab(),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 18),
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: color.withOpacity(0.25),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                icon,
                size: 30,
                color: color,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    remark,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    total,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
