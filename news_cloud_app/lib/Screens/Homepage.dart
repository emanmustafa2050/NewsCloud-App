// ignore: file_names
import 'package:cloud_app/Widgets/NewsListBuilder.dart';
import 'package:cloud_app/Widgets/categorylistView.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
        elevation: 0,  // to prvent shado
        backgroundColor: Colors.transparent,  // to take the same color of the screen
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center, // to make text in center
          children: [
            Text("News",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
            Text("Cloud",style: TextStyle(color:Colors.orange,fontSize: 24,fontWeight: FontWeight.bold))
          ],
        ),),
        body: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child:CategoryListView(),),
              SliverToBoxAdapter(child:  SizedBox(height: 32,)),
               NewsListViewBuilder(category: 'general',),
             
            ],
          ),
      
        ),
             
      ),
    );
  }
}

