import 'package:flutter/material.dart';
import 'package:newsapp/Core/remote/ApiManager.dart';
import 'package:newsapp/UI/articles%20responce/articles.dart';

class ArticlesViewModel extends ChangeNotifier{
  List<Articles>articles=[];
  String? errormsg;
  bool showloading =false;
  getAticles(String sourceid)async {
    try {
      showloading=true;
      var responce = await APIManager.getarticles(sourceid);
      if (responce.status == "error") {
        //handle error server
        errormsg=responce.message;
      

      }
      else{
        //handle success state
        articles=responce.articles??[];
      }
      showloading=false;
    }

    catch(e){
      //handle exception error
      errormsg=e.toString();
      showloading=false;
    }
     notifyListeners();
  }
 }

