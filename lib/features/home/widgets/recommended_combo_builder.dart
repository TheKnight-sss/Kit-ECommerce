import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kit/Core/utils/textstyles.dart';
import 'package:kit/features/home/widgets/product_cart.dart';
import 'package:kit/Core/utils/product_model.dart';

class RecommendedComboBuilder extends StatelessWidget {
  const RecommendedComboBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Recommended Combo",
              style: TextStyles.title(fontWeight: FontWeight.bold),
            ),
            Gap(24),
          ],
        ),
        SizedBox(
          height: 190,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCart(model: products[index]);
            },
            separatorBuilder: (context, index) => Gap(16),
            itemCount: products.length,
          ),
        ),
      ],
    );
  }
}
