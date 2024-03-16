import 'package:flutter/material.dart';

class MasterCard extends StatelessWidget {
  String id;
  Color color;
  String balance;

  MasterCard({
    super.key,
    required this.balance,
    required this.color,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 100, left: 10),
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Stack(
            children: [
              cardBackground(size: 50, pTop: 90, pLeft: 200),
              cardBackground(size: 160, pBottom: -50),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        masterCardLogo(),
                        Text(
                          id,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'MasterCard',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              balance,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 24),
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(11),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 25,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          child: Image.asset(
            'assets/images/img1.png',
            width: 140,
          ),
        )
      ],
    );
  }

  Positioned cardBackground(
      {double size = 40,
      double? pTop,
      double? pBottom,
      double? pLeft,
      double? pRight}) {
    return Positioned(
      left: pLeft,
      top: pTop,
      right: pRight,
      bottom: pBottom,
      child: Transform.rotate(
        angle: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(size / 6),
          ),
          height: size,
          width: size,
        ),
      ),
    );
  }

  SizedBox masterCardLogo() {
    return SizedBox(
      width: 100,
      child: Stack(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Positioned(
            left: 15,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
