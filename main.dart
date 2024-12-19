import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const RecipeApp());

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C0F0D),
      extendBody: true,
      appBar: AppBar(
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(),
          child: Center(
            child: SizedBox(
              width: 21,
              height: 14,
              child: SvgPicture.asset("assets/icons/back-arrow.svg",fit: BoxFit.cover,
              )
            ),
          ),
        ),
        title: const Text(
        "Categories",
        style: TextStyle(
          color: Color(0xFFFFD5D67),
          ),
        ),
        actions: const [
        ],
        centerTitle: true,
        backgroundColor: const Color(0xFF1C0F0D),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MainCategoryItem(image: "assets/seafood.png", text:"Seafood"),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/breakfast.png", text: "Breakfast"),
              CategoryItem(image: "assets/lunch.png", text: "Lunch"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/vegan.png", text: "Vegan"),
              CategoryItem(image: "assets/dinner.png", text: "Dinner"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/dessert.png", text: "Dessert"),
              CategoryItem(
                image: "assets/drinks.png",
                text: "Drinks",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 160,
            height: 145,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6,),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        )
      ],
    );
  }
}

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(height: 6),
        Center(
          child: SizedBox(
            width: 356,
            height: 149,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image:AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          )
        )
      ],
    );
  }
}
