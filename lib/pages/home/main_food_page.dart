import 'package:flutter/material.dart';
import '../../utils/Colors.dart';
import '../../widgets/BigText.dart';
import '../../widgets/SmallText.dart';
import 'food_page_body.dart';

class MainfoodPage extends StatefulWidget {
  const MainfoodPage({Key? key}) : super(key: key);

  @override
  State<MainfoodPage> createState() => _MainfoodPageState();
}

class _MainfoodPageState extends State<MainfoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 30, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                        text: 'Bangladesh',
                        colors: AppColors.mainColor,
                        size: 15,
                        textOverflow: TextOverflow.ellipsis),
                    Row(
                      children: [
                        SmallText(
                            text: 'Accra',
                            size: 15,
                            textOverflow: TextOverflow.ellipsis),
                        const Icon(
                          IconData(0xe098, fontFamily: 'MaterialIcons'),
                        ),
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
