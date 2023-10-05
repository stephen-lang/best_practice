 import 'package:flutter/material.dart';
 
 
// ignore: depend_on_referenced_packages
import 'package:dots_indicator/dots_indicator.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../utils/Colors.dart';
import '../widgets/BigText.dart';
import '../widgets/SmallText.dart';
import '../widgets/icon_and_text_widget.dart';
import '../widgets/label_info.dart';
import '../widgets/space.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  // ignore: non_constant_identifier_names
  double Current_Page = 0.0;
  final int position = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(
      () {
        setState(() {
          Current_Page = pageController.page!;
          
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position:Current_Page ,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            top: 25,
            right: 20,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    BigText(
                      text: 'Popular',
                      textOverflow: TextOverflow.visible,
                      colors: Colors.black,
                    ),
                    const SizedBox(
                      width: 30,
                      height: 15,
                    ),
                    SmallText(
                        text: "Faood Pairing",
                        size: 10,
                        textOverflow: TextOverflow.visible),
                  ],
                ),
              ),
              SizedBox(
                height: 900,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 8,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Moreproducts();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget Moreproducts() {
    return Row(
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/image/food1.jpg")),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Container(
          width: 205,
          height: 100,
          margin: const EdgeInsets.only(
            left: 5,
            right: 0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              const BoxShadow(
                color: Colors.grey,

                blurRadius: 1,
                offset: Offset(0, 1), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                blurRadius: 1,
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                blurRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            BigText(
                text: "Nutritional Fruit",
                size: 20,
                textOverflow: TextOverflow.ellipsis),
            const Space_me(heighte: 5),
            SmallText(
                text: "From the chinesse menu",
                size: 10,
                textOverflow: TextOverflow.ellipsis),
            const Space_me(heighte: 10),
            const LableInfo()
          ]),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          height: 180,
          decoration: BoxDecoration(
            color: index.isEven ? Colors.red : Colors.red,
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage("assets/image/food1.jpg")),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 20,
            right: 15,
            left: 20,
          ),
          height: 140,
          width: 300,
          margin: const EdgeInsets.only(left: 30, right: 30, top: 130),
          decoration: BoxDecoration(
            boxShadow: [
              const BoxShadow(
                color: Colors.grey,

                blurRadius: 5,
                offset: Offset(0, 5), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.5),

                blurRadius: 5,
                offset: const Offset(-5, 0), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.5),

                blurRadius: 5,
                offset: const Offset(5, 0), // changes position of shadow
              ),
            ],
            color: index.isEven ? Colors.white : Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BigText(
                  text: "Chinesse Side", textOverflow: TextOverflow.ellipsis),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: AppColors.mainColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const Space_me(
                    heighte: 0,
                  ),
                  SmallText(
                      text: "4.5",
                      size: 10,
                      textOverflow: TextOverflow.ellipsis),
                  const Space_me(
                    heighte: 0,
                  ),
                  SmallText(
                      text: "1247",
                      size: 10,
                      textOverflow: TextOverflow.ellipsis),
                  const Space_me(
                    heighte: 0,
                  ),
                  SmallText(
                    text: "Comments",
                    size: 10,
                    textOverflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              const Space_me(
                heighte: 18,
              ),
              Row(
                children: [
                  IconTextWidget(
                      iconColor: AppColors.iconColor1,
                      icons: Icons.circle_sharp,
                      size: 10,
                      text: "Normal"),
                  const Space_me(
                    heighte: 0,
                  ),
                  IconTextWidget(
                      iconColor: AppColors.iconColor2,
                      icons: Icons.location_on,
                      size: 10,
                      text: "1.7km"),
                  const Space_me(
                    heighte: 0,
                  ),
                  IconTextWidget(
                      iconColor: AppColors.iconColor1,
                      icons: Icons.access_time_rounded,
                      size: 10,
                      text: "32min")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
