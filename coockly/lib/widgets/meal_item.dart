import 'package:coockly/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';



class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

      //* INKWELL WIDGET
      child: InkWell(
        onTap: () {},

        //* STACK WIDGET
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage), 
              image: NetworkImage(meal.imageUrl)
            ),

            Positioned(
              bottom: 0,
              left: 0,
              top: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      meal.title, 
                      textAlign: TextAlign.center,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,  // Very long text will be substituted with ...
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [

                      ],
                    )
                  ],
                ),
              ),
            )


          ],

        ),
      ),
    );
  }

}