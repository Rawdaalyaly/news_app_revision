import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../Models/User_Model.dart';
import '../Services/News_Services.dart';

class NewsProvider extends ChangeNotifier {
  NewsModel? data;

  Future<void> RecieveData(String Category) async {
    data = await NewsService.GetData(Category);
    notifyListeners();
  }
}
