import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ctse_lab_activity/model/recipe.dart';

class OneRecipe extends StatelessWidget {
  final Recipe? recipe;
  const OneRecipe(this.recipe, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Title : ${recipe!.title.toString()}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Text(
              "Description : ${recipe!.description.toString()}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Ingredients : ${recipe!.ingredients.toString()}",
            ),
          ],
        ),
      ),
    );
  }
}
