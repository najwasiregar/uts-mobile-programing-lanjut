import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushishop/theme/colors.dart';
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
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),
              
                  // description
                Text("Description", style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold,
                fontSize: 18,
                ),
                ),

                const SizedBox(height: 10),

                Text("Delicate sliced, fresh salmon drapes elegantly over a pillow of perfectly seasoned sushi rice.",
                style: TextStyle(color: Colors.grey[600],
                fontSize: 14,
                height: 2,
                ),
                ),
                ],
              ),
            ),
          ),

          // price + quantity + add to cart button
          Container(
            color: primarycolor,
            child: Column(
              children: [
                // price + quantity
                Text("\$" + widget.food.price,
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  ),
                ),
                // add to cart button

              
              ],
            ),
          )
        ],
      ),
    );
  }
}