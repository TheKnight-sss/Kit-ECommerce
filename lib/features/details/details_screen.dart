import 'package:flutter/material.dart';
import 'package:kit/Core/utils/appcolors.dart';
import 'package:kit/Core/utils/product_model.dart';
import 'package:kit/Core/utils/textstyles.dart';
import 'package:kit/Core/widgets/custom_button.dart';
import 'package:kit/features/details/widgets/image_container.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key, required this.product});
  final ProductModel product;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;
  bool isExpanded = false;
  late double price;
  int copies = 1;
  @override
  void initState() {
    super.initState();
    price = widget.product.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageContainer(widget: widget),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        widget.product.name,
                        style: TextStyles.title(fontSize: 32),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (widget.product.quantity > 1) {
                                  widget.product.quantity--;
                                }
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: AppColors.grayColor),
                              ),
                              child: Icon(
                                Icons.remove,
                                color: AppColors.grayColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "\$${widget.product.quantity * widget.product.price}",
                            style: TextStyles.bodyText(),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.product.quantity++;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.borderColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(
                                Icons.add,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$${widget.product.price}",
                        style: TextStyles.title(fontSize: 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(color: AppColors.searchColor, thickness: 1),
                  SizedBox(height: 10),
                  Text(
                    "One Pack Contains:",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 200,
                      height: 3,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.",
                    style: TextStyles.smallText(
                      color: AppColors.darkColor,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: AppColors.searchColor, thickness: 1),
                  Text(
                    "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make",
                    style: TextStyles.smallText(
                      color: AppColors.darkColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.borderColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: CustomButton(
                          height: 60,
                          txt: "Add to basket",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
