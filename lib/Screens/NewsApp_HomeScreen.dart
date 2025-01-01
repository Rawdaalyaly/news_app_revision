import 'package:flutter/material.dart';
import 'package:news_app_revision/Screens/News_Screen.dart';

class NewsAppHomeScreen extends StatelessWidget {
  const NewsAppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Categories"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(Category: "business")),
              );
            },
            child: Container(padding: EdgeInsets.all(16),
              child: Center(
                child: Text("Business",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push( context, MaterialPageRoute(builder: (context) => NewsScreen(Category: "entertainment")),
            );
            },
            child: Container(padding: EdgeInsets.all(16),
              child: Center(
                child: Text("Entertainment",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(Category: "general")),
            );
            },
            child: Container(padding: EdgeInsets.all(16),
              child: Center(
                child: Text("General",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => NewsScreen(Category: "sports")),
            );
            },
            child: Container(padding: EdgeInsets.all(16),
              child: Center(
                child: Text("Sports",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
