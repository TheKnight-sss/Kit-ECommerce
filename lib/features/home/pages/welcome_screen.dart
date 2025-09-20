import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kit/Core/constants/appimages.dart';
import 'package:kit/Core/functions/navigation.dart';
import 'package:kit/Core/utils/appcolors.dart';
import 'package:kit/Core/utils/textstyles.dart';
import 'package:kit/Core/widgets/custom_button.dart';
import 'package:kit/features/home/pages/Home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor,
            width: double.infinity,
            height: 469,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(35, 150, 35, 54),
              child: Image.asset(AppImages.basket),
            ),
          ),
          Gap(56),
          Text("Get The Freshest Fruit Salad Combo", style: TextStyles.title()),
          Gap(8),
          Text(
            "We deliver the best and freshest fruit salad\n in town. Order for a combo today!!!",
            style: TextStyles.smallText(),
          ),
          Gap(58),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 56,
              width: double.infinity,
              child: CustomButton(txt: "Let's Continue", onPressed: () {
                pushwithReplacement(context, HomeScreen());
              })
            ),
          ),
        ],
      ),
    );
  }
}
