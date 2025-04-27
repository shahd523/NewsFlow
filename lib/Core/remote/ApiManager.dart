import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/Core/StringsManager.dart';
import 'package:newsapp/UI/Sources%20Responce/SourcesResponce.dart';
import 'package:newsapp/UI/articles%20responce/articlesresponceee.dart';
class APIManager{
  //https://newsapi.org/v2/top-headlines/sources?apiKey=API_KEY
  //63068872ed8340e19b936d90b1ba7952
  //
  static Future<SourcesResponce?>getSources(String category)async{Uri uri=Uri.https(StringsManager.baseurl,
      "/v2/top-headlines/sources",
      {"apikey":StringsManager.apikey,"category":category});
  var responce= await http.get(uri);
  Map<String,dynamic>json= jsonDecode(responce.body);
  SourcesResponce sourcesResponce=SourcesResponce.fromJson(json);
  return sourcesResponce;

  }
  //GET https://newsapi.org/v2/everything?q=bitcoin&apiKey=63068872ed8340e19b936d90b1ba7952
  static Future<Articlesresponceee> getarticles(String source)async{
    Uri url=Uri.https(StringsManager.baseurl,"/v2/everything",{
      "ApiKey":StringsManager.apikey,
      "sources":source
    }
    );
   var responce= await http.get(url);
   Map<String,dynamic>json=jsonDecode(responce.body);
   Articlesresponceee articlesresponce=Articlesresponceee.fromJson(json);
   return articlesresponce;
  }
}