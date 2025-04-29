import 'package:flutter/material.dart';
import 'package:newsapp/Core/remote/ApiManager.dart';
import 'package:newsapp/UI/Sources%20Responce/Sources.dart';

class NewsListViewModel extends ChangeNotifier{
  List<Sources>sources=[];
  String? errormsg;
  bool showloading=false;
  getSources(String categoryid)async{
    try{
      showloading=true;
  var responce= await APIManager.getSources(categoryid);
  if(responce?.status=="error"){
    //error state
     errormsg=responce?.message;
    showloading=false;

  }
  else{
    //success state
    sources=responce?.sources??[];
    showloading=false;
  }}catch(e){
      errormsg=e.toString();
      showloading=false;
    }
    notifyListeners();

  }

}
