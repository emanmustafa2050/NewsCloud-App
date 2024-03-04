import 'package:cloud_app/Models/CategotyModel.dart';
import 'package:cloud_app/Widgets/categoryCard.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  //const CategoryListView({super.key,});
  //CategoryModel Model;
  List<CategoryModel > CategoryModelList =  [
    CategoryModel(image:"assets/images/Business.png", text: ''),
    CategoryModel(text: "Entertainment", image:"assets/images/entertaiment.avif"),
    CategoryModel(text: "Health", image:"assets/images/health.avif"),
    CategoryModel(text: "Science", image:"assets/images/science.avif"),
    CategoryModel(text: "Sports", image:"assets/images/Sports Instagram Post.png"),
    CategoryModel(text: "Technology", image:"assets/images/technology.jpeg"),
    CategoryModel(text: "General", image:"assets/images/general.jpg"),
    

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, 
        itemCount:CategoryModelList.length ,
        itemBuilder: (context,index){
          return CategoryCard(model: CategoryModelList[index],);
      
      }),
    );
  }
}