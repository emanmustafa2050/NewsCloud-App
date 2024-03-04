import 'package:cloud_app/Models/articalModel.dart';
import 'package:cloud_app/Widgets/categoryList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
   List<ArticalModel> articals;
   NewsListView({super.key,required this.articals});

  @override
  Widget build(BuildContext context) {
    return SliverList
              (
                delegate: SliverChildBuilderDelegate
                (
                  childCount: articals.length,(context, index) {
                  return CategoryList(
                    articalModel: articals[index],
                  );},
                )
                
              );
  }
}