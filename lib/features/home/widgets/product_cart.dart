import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:kit/Core/constants/appimages.dart';
import 'package:kit/Core/functions/navigation.dart';
import 'package:kit/Core/utils/appcolors.dart';
import 'package:kit/Core/utils/textstyles.dart';
import 'package:kit/Core/utils/product_model.dart';
import 'package:kit/features/details/details_screen.dart';

class ProductCart extends StatefulWidget {
   const ProductCart({super.key, required this.model});
  final ProductModel model;
  

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  IconData icon = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, DetailsScreen(product: widget.model));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Hero(
                  tag: widget.model.id,
                  child: Image.asset(widget.model.image, height: 80, width: 80),
                ),
                Transform.translate(
                  offset: Offset(4, -30),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        icon == Icons.favorite_border
                            ? icon = Icons.favorite
                            : icon = Icons.favorite_border;
                      });
                    },
                    icon: Icon(icon,color: AppColors.primaryColor,),
                  ),
                ),
              ],
            ),
            Gap(8),
            Text(widget.model.name, style: TextStyles.bodyText()),
            Gap(10),
            Row(
              children: [
                SvgPicture.asset(AppImages.currency),
                Gap(4),
                Text(
                  NumberFormat.simpleCurrency(
                    locale: 'en_US',
                  ).format(widget.model.price * widget.model.quantity),
                  style: TextStyles.priceText(),
                ),
                Gap(38),
                IconButton(
                  onPressed: () {
                    setState(() {
                      widget.model.quantity++;
                    });
                  },
                  icon: Container(
                    width: 24,
                    height: 24,
                    color: AppColors.butBackgroundColor,
                    child: Icon(Icons.add, color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
