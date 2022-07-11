import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, color: AppColours.mainBlackColor, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height5,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star, color: AppColours.mainColor, size: 15,)),
            ),
            SizedBox(width: Dimensions.width12),
            SmallText(text: "4.5",),
            SizedBox(width: Dimensions.width15,),
            SmallText(text: "1233"),
            SizedBox(width: Dimensions.width8,),
            SmallText(text: "Comments", color: AppColours.yellowColor,),

          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconColor: AppColours.iconColor1
            ),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "Nigeria",
                iconColor: AppColours.mainColor
            ),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "June 14",
                iconColor: AppColours.iconColor2
            )
          ],
        )

      ],
    );
  }
}
