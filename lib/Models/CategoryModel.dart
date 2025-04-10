import 'dart:ui';

import 'package:newsapp/Core/AssetsManager.dart';
import 'package:newsapp/Core/StringsManager.dart';

class CategoryModel{
  String title;
  String id;
  String imagepath;
  TextDirection textDirection;
  CategoryModel({required this.title,required this.id,required this.imagepath,this.textDirection=TextDirection.ltr});
 static List<CategoryModel>categories=[
   CategoryModel(title: StringsManager.general, id: "general", imagepath: AssetsManager.cat1, ),
   CategoryModel(title: StringsManager.busines, id: "business", imagepath: AssetsManager.cat2,textDirection:TextDirection.rtl ),
   CategoryModel(title: StringsManager.Sports, id: "sports", imagepath: AssetsManager.cat7, ),
   CategoryModel(title: StringsManager.Technology, id: "technology", imagepath: AssetsManager.cat6,textDirection:TextDirection.rtl ),
   CategoryModel(title: StringsManager.Health, id: "health", imagepath: AssetsManager.cat4, ),
   CategoryModel(title: StringsManager.Science, id: "science", imagepath: AssetsManager.cat5,textDirection:TextDirection.rtl ),
   CategoryModel(title: StringsManager.Entertainment, id: "entertainment", imagepath: AssetsManager.cat3, )
 ];
}