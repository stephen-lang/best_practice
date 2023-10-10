// ignore: unused_import
import 'package:best_practices/main.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            color: const Color.fromRGBO(59, 32, 146, 0.098),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(const MyApp() as BuildContext);
            },
            child: const Text('Go back!'),
          ),
        ],
      ),
    );
  }
}
