import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandible_text_widget.dart';

class RecommededFoodDetails extends StatefulWidget {
  const RecommededFoodDetails({Key? key}) : super(key: key);

  @override
  _RecommededFoodDetailsState createState() => _RecommededFoodDetailsState();
}

class _RecommededFoodDetailsState extends State<RecommededFoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child:Container(

                child: Center(
                    child: BigText(text: "Heading is Here", color: AppColours.mainBlackColor, size: Dimensions.font26,)
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColours.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  "assets/image/food02.jpg",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text: "This will This will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your s will add a line like this to your  like this to your  like this to your  like this to your  like this to your  like this to your like this to your  like this to your  like this to your  like this to your  like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your  like this to your  like this to your  like this to your  like this to your  like this to your like this to your  like this to your  like this to your  like this to your  like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml add a line like this to your  like this to your  like this to your  like this to your  like this to your  like this to your like this to your  like this to your  like this to your  like this to your  like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml This will add a line like this to your package's pubspec.yaml ",
                  ),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20*2.5,
                right: Dimensions.width20*2.5,
                bottom: Dimensions.height10,
                top: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove, iconSize: Dimensions.icon24, backgroundColor: AppColours.mainColor, iconColor: Colors.white,),
                BigText(text: "\$12 " + " x " + "0", color: AppColours.mainBlackColor, size: Dimensions.font26,),
                AppIcon(icon: Icons.add, iconSize: Dimensions.icon24, backgroundColor: AppColours.mainColor, iconColor: Colors.white,),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColours.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20*2),
                topRight: Radius.circular(Dimensions.radius20*2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius30),
                      color: Colors.white
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColours.mainColor,
                  )
                ),
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                  child: BigText(text: "\$10 | Add to Cart", color: Colors.white,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColours.mainColor
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
