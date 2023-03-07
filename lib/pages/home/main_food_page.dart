import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery_app/pages/home/food_page_body.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

import '../../AppColors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("is" + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(children: [
        Container(
        child: Container(
          margin: EdgeInsets.only(top: Dimensions.height30+Dimensions.height15, bottom: Dimensions.height15),
          padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
               BigText(text: "China", color: AppColors.mainColor,),
               Row(children: [
                SmallText(text: "BeiJing", color: Colors.black54),
                Icon(Icons.arrow_drop_down_rounded)
               ],)
              ],),
              Container(
                width: Dimensions.height30+Dimensions.height15,
                height: Dimensions.height30+Dimensions.height15,
                child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: AppColors.mainColor,
                )

              )
          ],)
        )
      ),
      Expanded(child: SingleChildScrollView(child: FoodPageBody(),)),
      ],)
      );
  }
}