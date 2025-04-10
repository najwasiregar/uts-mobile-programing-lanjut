import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushishop/components/button.dart';
import 'package:sushishop/components/food_tile.dart';
import 'package:sushishop/models/food.dart';
import 'package:sushishop/pages/food_details_page.dart';
import 'package:sushishop/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  // food menu
  List<Food> foodMenu = [
    // salmon sushi
    Food(
      name: "Salmon Sushi", 
      price: "21.00", 
      imagePath: "lib/images/salmon_sushi.png", 
      rating: "4.9",
      ),

      // tuna
      Food(
         name: "Tuna", 
      price: "23.00", 
      imagePath: "lib/images/tuna.png", 
      rating: "4.3",
      ),
  ];

      // navigate to food item details page
      void navigateToFoodDetails(int index) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
        ),
        );
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey,
          ),
          title: Text(
            'Tokyo', 
            style: TextStyle(color: Colors.grey),),
          ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
              color: primarycolor, 
              borderRadius : BorderRadius.circular(20),
              ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   // promo message
                   Text(
                    'Get 32% Promo', 
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      color: Colors.white,
                    ),), 

                   const SizedBox(height: 20),

                   // redeem button
                   MyButton(
                    text: "Redeem",
                    onTap: () {} 
                    ),

                   // image
                   Image.asset('lib/images/sushi.png'),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Search here..",
                ),
            ),
          ),

          const SizedBox(height: 25),

          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Food Menu", 
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              color: Colors.grey,
              fontSize: 18,
              ),
              ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () => navigateToFoodDetails(index),
                ),
              ),
              ),

               const SizedBox(height: 25),

          // popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(children: [
                // image
              Image.asset('lib/images/salmon_eggs.png',
              height: 60,
              ),

              const SizedBox(width: 20),

              // name and price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //name
                  Text("Salmon Eggs", 
                  style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                  ),

                const SizedBox(height: 10),

                  //price 
                  Text(
                  '\$21.00',
                  style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ],
          ),
    
              // heart 
              const Icon(
                Icons.favorite_outline,
              color: Colors.grey,
              size: 28,
              ),
             ],
            ),
          )
        ],
      ),
    );
  }
}