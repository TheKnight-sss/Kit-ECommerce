import 'package:kit/Core/constants/appimages.dart';

class ProductModel {
  final int id;
  final String name;
  final String image;
  final double price;
  int quantity;

  ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });
  
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    name: "Honey lime combo",
    image: AppImages.dish1,
    price: 2000,
    quantity: 1,
  ), 
  ProductModel(
    id: 2,
    name: "Berry mango combo",
    image: AppImages.dish2,
    price: 8000,
    quantity: 1,
  ),
  ProductModel(
    id: 3,
    name: "Tropical fruit salad",
    image: AppImages.dish3,
    price: 10000,
    quantity: 1,
  ),
  ProductModel(
    id: 4,
    name: "melon fruit salad",
    image: AppImages.dish4,
    price: 10000,
    quantity: 1,
  ),
   ];

List<ProductModel> filteredList = [
  ProductModel( 
    id: 5,
    name: "Honey lime combo",
    image: AppImages.dish1,
    price: 2000,
    quantity: 1,
  ),
  ProductModel(
    id: 6,
    name: "Berry mango combo",
    image: AppImages.dish2,
    price: 8000,
    quantity: 1,
  ),
  ProductModel(
    id: 7,
    name: "Tropical fruit salad",
    image: AppImages.dish3,
    price: 10000,
    quantity: 1,
  ),
  ProductModel(
    id: 8,
    name: "melon fruit salad",
    image: AppImages.dish4,
    price: 10000,
    quantity: 1,
  ),
   ];