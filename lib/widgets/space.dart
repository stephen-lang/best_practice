import 'package:flutter/cupertino.dart';

class Space_me extends StatelessWidget {
  final double heighte;
  const Space_me({Key? required, required this.heighte, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: heighte,
    );
  }
}
