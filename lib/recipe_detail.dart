import 'package:flutter/material.dart';
import 'package:receipes/model/receipe.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Detail'),
      ),
      body: Column( 
        children: [
          Image(image: AssetImage(recipe.imageUrl)),
          SizedBox(height: 16.0,),
          Text(recipe.imgLabel,style: TextStyle(color:Colors.green,fontSize: 20),),
          Text(recipe.Detail,style: TextStyle(color: Colors.black,fontSize:18 )),
        ],
      ),
    );
  }
}
