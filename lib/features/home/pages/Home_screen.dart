import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:kit/Core/constants/appimages.dart';
import 'package:kit/Core/utils/appcolors.dart';
import 'package:kit/Core/utils/textstyles.dart';
import 'package:kit/features/home/widgets/filtered_item.dart';
import 'package:kit/features/home/widgets/recommended_combo_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.short_text_rounded,
              size: 50,
              color: AppColors.secondaryColor,
            ),
          ),
           Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {},
              child: SizedBox(child: Image.asset(AppImages.shopbag)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: "Hello, Tony,  ",
                    style: TextStyles.title(fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: "What Fruit Salad\nCombo do you want?",
                        style: TextStyles.title(),
                      ),
                    ],
                  ),
                ),
                Gap(24),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppImages.filter),
                    ),
                  ),
                ),
                Gap(40),
                RecommendedComboBuilder(),
                Gap(28),
                Row(
                  children: [
                    Text("Hottest", style: TextStyles.title(fontSize: 24)),
                    SizedBox(width: 30),
                    Text("Popular", style: TextStyles.smallText()),
                    SizedBox(width: 30),
                    Text("New combo", style: TextStyles.smallText()),
                    SizedBox(width: 30),
                    Text("Top", style: TextStyles.smallText()),
                  ],
                ),
                SizedBox(height: 20),
                FilteredItems(),
              ],
            ),            
            ),
          ),
      ),
      );
    }
  }

