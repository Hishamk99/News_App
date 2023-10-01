import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categoriesData = const [
    CategoryModel(
      image: 'assets/business.jpg',
      text: 'Business',
    ),
    CategoryModel(
      image: 'assets/Entertainment.jpg',
      text: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.jpg',
      text: 'Health',
    ),
    CategoryModel(
      image: 'assets/sports.jpg',
      text: 'Sports',
    ),
    CategoryModel(
      image: 'assets/Science.jpg',
      text: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpg',
      text: 'Technology',
    ),
    CategoryModel(
      image: 'assets/General.jpg',
      text: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesData.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categoriesData[index],
            );
          }),
    );
  }
}
