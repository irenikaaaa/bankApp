import 'package:bankapp/Detail/transition_item_detail.dart';
import 'package:bankapp/home/master_card.dart';
import 'package:bankapp/home/transition_items.dart';
import 'package:flutter/material.dart';

class BankingHomeScreen extends StatefulWidget {
  const BankingHomeScreen({super.key});

  @override
  State<BankingHomeScreen> createState() => _BankingHomeScreenState();
}

class _BankingHomeScreenState extends State<BankingHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            customAppBar(),
            SizedBox(
              height: 340,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                children: [
                  MasterCard(
                    id: '**** **** **** 3434',
                    balance: '\$60',
                    color: Colors.deepPurple,
                  ),
                  MasterCard(
                    id: '**** **** **** 8888',
                    balance: '\$120',
                    color: Colors.blueAccent,
                  ),
                  MasterCard(
                    id: '**** **** **** 6666',
                    balance: '\$3000',
                    color: Colors.pinkAccent,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Transaction',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: ListView(
                  children: [
                    TransitionItems(
                        onTab: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TransitionItemDetail(),
                            ),
                          );
                        },
                        color: Colors.blueAccent,
                        icon: Icons.flight_takeoff,
                        date: '24 fab',
                        remark: 'Travelling',
                        time: '2 Day Ago',
                        total: '\$44.000'),
                    TransitionItems(
                        onTab: () {},
                        color: Colors.orange,
                        icon: Icons.fastfood,
                        date: '24 fab',
                        remark: 'Food',
                        time: '2 Day Ago',
                        total: '\$12.000'),
                    TransitionItems(
                        onTab: () {},
                        color: Colors.deepOrange,
                        icon: Icons.sports_bar,
                        date: '24 fab',
                        remark: 'Yoga',
                        time: '2 Day Ago',
                        total: '\$44.000')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Padding customAppBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Card',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            Text(
              '14.03',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ],
        ),
        Container(
          height: 70,
          width: 70,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            '😝',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
        )
      ],
    ),
  );
}
