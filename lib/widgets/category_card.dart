import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
            height: 85,
            width: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(category.image),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
                child: Text(
              category.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
    );
  }
}