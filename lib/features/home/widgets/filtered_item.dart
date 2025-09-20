import 'package:flutter/material.dart';
import 'package:kit/Core/utils/product_model.dart';
import 'package:kit/features/home/widgets/product_cart.dart';

// ignore: must_be_immutable
class FilteredItems extends StatelessWidget {
  const FilteredItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCart(model: filteredList[index]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 20);
            },
            itemCount: filteredList.length,
          ),
        ),
      ],
    );
  }
}