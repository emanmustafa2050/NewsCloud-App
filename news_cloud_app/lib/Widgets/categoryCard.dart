import 'package:cloud_app/Models/CategotyModel.dart';
import 'package:cloud_app/Screens/views.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryModel model;
   CategoryCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector
    (
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return Views(category: model.text,);

        },),);
      },
      child: Padding(
           padding: const EdgeInsets.only(right: 16),
            child: Container(
              width: 160,
              height: 100,
              decoration: BoxDecoration(
                image:  DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(model.image!)
                ),
                borderRadius: BorderRadius.circular(16),
               
              ),
              child: Center(
                child: Text(model.text,style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
    );
  }
}