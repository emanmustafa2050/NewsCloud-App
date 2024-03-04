import 'package:cloud_app/APIsServices/NewsService.dart';
import 'package:cloud_app/Models/articalModel.dart';
import 'package:cloud_app/Widgets/NewsList.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
   NewsListViewBuilder({super.key,required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var futureData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureData= NewsServic(dio: Dio()).getNews(
      categoy: widget.category,
    );
  }
  Widget build(BuildContext context) {

    return FutureBuilder<List<ArticalModel>>(
    future: futureData ,
    builder: (context,snapshot){
      if(snapshot.hasData)
      {
        return  NewsListView(articals: snapshot.data??[]);
      }
      else if(snapshot.hasError)
      {
        return SliverToBoxAdapter(
          child: Center(
            child: Text("oops,there is an user error ",style:TextStyle(
              fontSize: 32,fontWeight: FontWeight.bold,color: Colors.red,
            ),),
          ),
        );
      }
      else{
        return SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator()),

        );
      }
     }
     );
                
              
  }
}