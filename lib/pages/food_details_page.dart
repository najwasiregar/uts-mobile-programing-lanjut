import 'package:flutter/material.dart';
import '../models/food.dart';

class FoodDetailsPage extends StatefulWidget {
final Food food;

  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          // listview of food details
          Expanded(
            child: ListView(
              children: [
                // image 
                

                // rating

                // food name

                // description

              ],
            ),
          ),

          // price + quantity + add to cart button

        ],
      ),
    );
  }
}