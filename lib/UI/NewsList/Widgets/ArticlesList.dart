import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/UI/NewsList/Widgets/ArticleItem.dart';

class ArticlesList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder:(context,index)=>ArticleItem() ,
        separatorBuilder:(context,index)=>SizedBox(height: 16.h,), itemCount:10);
  }

}