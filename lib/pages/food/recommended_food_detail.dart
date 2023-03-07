import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery_app/AppColors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/exandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

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
              child: Container(
              
              child: Center(child: BigText(size: Dimensions.font26, text: "Chinese Side")),
              width: double.maxFinite,
              
              padding: EdgeInsets.only(top: 5, bottom: 10),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                )
              ),
              ),
              
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(background: Image.asset(
              "assets/image/food0.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              Container(
                child: ExpandableTextWidget(text:
              "Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fired onoins (cheeky easy sub below!), fresh coriander/cilantro, then parboiled lightly spiced rice Chicken marinated in a spicy yoghurt is placed in a large pot, then layered with fried onions, fresh coriander cilantro, then par boiled lightly spiced riceChicken marinated in a spiced yoghuit is placed in a large pot, then layered with fried onions, fresh coriander cilantro,then par boiled lightly spiced rice. Chicken marinated in a spiced yoghuit is placed in a large pot, then layered with fried onions, fresh coriander cilantro, then par boiled lightly spiced rice Chicken marinated in a spiced yoghuit is placed in a large pot, then layered with fried onions, fresh coriander cilantro, then par boiled loghtly spiced riceChicken marinated in a spiced yoghuit is placed in a large pot, then layered with fried onoins, fresh coriander cilantro, then par boiled lightly spiced riceChicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions, fresh coriander cilantro, then par boiled lightly spiced rice Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fired onions, fresh coriander cilantro, then par boiled lightly spiced riceChicken marinated in a spiced yoghurrt is placed in a large pot, then layered with fired onions, fresh coriander cilantro, then par boiled lightly spiced riceChicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions,marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions, marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions."
            ),
            margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              )
            ],)
          )
        ],
      ),
    bottomNavigationBar: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      Container(
        padding: EdgeInsets.only(left: Dimensions.width30*5, right: Dimensions.width30*5,top: Dimensions.height10, bottom: Dimensions.height10),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppIcon(
            iconSize: Dimensions.iconSize24,
            iconColor: Colors.white,backgroundColor: AppColors.mainColor, icon: Icons.remove),
          BigText(text: "\$12.88"+" X "+"0", color: AppColors.mainBlackColor, size: Dimensions.font26,),
          AppIcon(
            iconSize: Dimensions.iconSize24,
            iconColor: Colors.white,backgroundColor: AppColors.mainColor, icon: Icons.add),
        ],
      ),
      ),
      Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20*2),
              topRight: Radius.circular(Dimensions.radius20*2),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
                ),
                child: Row(children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColors.signColor,)
                ]),
              ),
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor),
              )
            ]),
          ),
    ]),);
  }
}