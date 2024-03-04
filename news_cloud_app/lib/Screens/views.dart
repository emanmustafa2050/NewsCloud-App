import 'package:cloud_app/Widgets/NewsListBuilder.dart';
import 'package:flutter/material.dart';

class Views extends StatelessWidget {
  final String category;
  const Views({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Important news for you",style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.orange,fontSize: 20),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}