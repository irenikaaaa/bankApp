import 'package:flutter/material.dart';

class StatisticsData extends StatelessWidget {
  const StatisticsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Statistics',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              RotatedBox(
                quarterTurns: 3, // 1 quarterTurn = 90 degree
                child: Icon(
                  Icons.tune,
                  size: 32,
                  color: Colors.white54,
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.orange,
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black12,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.35),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFE9AA4E),
                    ),
                    child: const Center(
                      child: Text(
                        '55%',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    Text(
                      'Average Spand',
                      style: TextStyle(fontSize: 14, color: Colors.white54),
                    ),
                    Text(
                      '\&4,101 ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.file_open,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Report ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
