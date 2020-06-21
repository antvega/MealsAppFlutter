import 'package:flutter/material.dart';
import './category_meals_screen.dart';

// how should a food item look like?
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  void selectedCategory(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return CategoryMealsScreen(id,title);
    }));
  }


  CategoryItem(this.id,this.title, this.color);

  @override
  Widget build(BuildContext context) {
    // what do we want to return. The data we have
    // stored is the title and the color.
    return InkWell(
      onTap:()=> selectedCategory(context), // anonomous function

      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
