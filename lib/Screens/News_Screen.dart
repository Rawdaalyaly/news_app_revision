import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/News_Provider.dart';
import '../Widgets/News_Widget.dart';

class NewsScreen extends StatelessWidget {
  String Category;
  NewsScreen({required this.Category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$Category News"),
        centerTitle: true,
      ),
      body: Consumer<NewsProvider>(builder: (context, ObjectProvider, child) {
        final dataa = ObjectProvider.data;
        if (dataa == null) {
          ObjectProvider.RecieveData(Category);
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: dataa.userdata.length,
            itemBuilder: (context, index) {
              return NewsWidget(
                description: dataa.userdata[index]["description"],
                title: dataa.userdata[index]["title"],
                author: dataa.userdata[index]["author"],
                urlToImage: dataa.userdata[index]["urlToImage"],
              );
            },
          );
        }
      }),
    );
  }
}
