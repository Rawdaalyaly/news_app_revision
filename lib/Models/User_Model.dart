import 'dart:convert';

class NewsModel{
  List<dynamic> userdata;
  NewsModel({required this.userdata});
  factory NewsModel.fromjson(Map<String , dynamic> json)
  {
    return NewsModel(userdata: json['articles']);
  }
}