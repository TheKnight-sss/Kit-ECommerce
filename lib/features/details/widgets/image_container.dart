import 'package:flutter/material.dart';
import 'package:kit/Core/utils/appcolors.dart';
import 'package:kit/Core/utils/textstyles.dart';
import 'package:kit/features/details/details_screen.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key, required this.widget});

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
      height: 330,
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: AppColors.darkColor,
                    ),
                    Text(
                      "Go Back",
                      style: TextStyles.smallText(color: AppColors.darkColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Hero(
            tag: widget.product.id,
            child: Image.asset(
              widget.product.image,
              width: 330,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}