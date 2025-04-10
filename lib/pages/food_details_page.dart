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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: ListView(
                children: [
                  // image 
                  Image.asset(widget.food.imagePath,
                  height: 200,
                  ),
              
                  const SizedBox(height: 25,
                  ),
              
                  // rating
                  Row(
                    children: [
                      // star icon
                      Icon(Icons.star, color: Colors.yellow[800],
                      ),
              
                     const SizedBox(height: 5),
              
                      // rating number
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 10),
              
                  // food name
              
              
                  // description
              
                ],
              ),
            ),
          ),

          // price + quantity + add to cart button

        ],
      ),
    );
  }
}