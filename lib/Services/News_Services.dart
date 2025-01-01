import 'package:dio/dio.dart';
import 'package:news_app_revision/Models/User_Model.dart';

class NewsService{
static Dio dio = Dio();
static Future<NewsModel> GetData(String Category) async{
  try{
    Response response = await dio.get
      ("https://newsapi.org/v2/top-headlines?country=us&category=$Category&apikey=6f61e27ab4aa4a6399c6da66dd2b407b");
    if(response.statusCode == 200)
      {
        return NewsModel.fromjson(response.data);
      }
    else
    {
      throw Exception("Error");
    }
  }
  catch(error)
  {
    throw Exception("Error Occurred $error");
  }
}

}