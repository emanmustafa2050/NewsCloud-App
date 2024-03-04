import 'package:cloud_app/Models/articalModel.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class CategoryList extends StatelessWidget {
 
   CategoryList({super.key,required this.articalModel});
  ArticalModel articalModel;
   

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: articalModel.image!=null?Image.network(articalModel.image!,
          width: double.infinity,
          height: 200,
          fit: BoxFit.fill,
          ):Image.asset('assets/images/new-News.png'),),

        ReadMoreText(
                 articalModel.title??'',
                  trimLines: 2,
                  //preDataText: "AMANDA",
                  preDataTextStyle: TextStyle(fontWeight: FontWeight.w800),
                  style: TextStyle(color: Colors.black,fontSize: 20),
                  colorClickableText: Colors.orange,
                  //trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
             
                  trimExpandedText: ' show less',
                ),
        ReadMoreText(
                 articalModel.title??'',
                  trimLines: 2,
                  //preDataText: "AMANDA",
                  preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                  style: TextStyle(color: Colors.grey,fontSize: 20,),
                  colorClickableText: Colors.orange,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
              

        // Text(articalModel.title??'',
        // overflow: TextOverflow.ellipsis,
        // maxLines: 2,
        // style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),

        // Text(articalModel.subtitle??'',
        // overflow: TextOverflow.ellipsis,
        // maxLines: 2,
        // style: TextStyle(fontSize: 20,color: Colors.grey),)
      ],
    );
  }
}