// ignore: file_names
import 'dart:async';
import 'package:cloud_app/Models/articalModel.dart';
import 'package:dio/dio.dart';

class NewsServic
{
  final Dio dio ;
  NewsServic({required this.dio});
  Future<List<ArticalModel>> getNews ({required String categoy})async {
    try {
  Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=$categoy&apiKey=23abde597f5242bf9a7bc6c8b0296567');
  Map<String,dynamic> jsonData = response.data;
  
     List<dynamic> articles=jsonData["articles"];
     List<ArticalModel> articalist=[];
     
  
     for(var artical in articles)
     {
  ArticalModel articalModel = ArticalModel
  (
    image: artical['urlToImage'],
    title: artical['title'],
    subtitle: artical['description']
  );
    articalist.add(articalModel);
     }
     return articalist;
} on Exception {
 return [];
}

  }

}