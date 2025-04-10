import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/Core/StringsManager.dart';
import 'package:newsapp/Models/CategoryModel.dart';
import 'package:newsapp/UI/Categories/widgets/CategoryItemWidget.dart';

class Categories extends StatelessWidget{
  final  void Function(CategoryModel) oncategorytap;

  const Categories( this.oncategorytap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(15),
      child: Column(
        children: [
          Text(StringsManager.goodmorning,style: Theme.of(context).textTheme.titleMedium)
        ,SizedBox(height: 16.h),
          Expanded(child: ListView.separated(
              itemBuilder:(context,index)=>CategoryItem(category: CategoryModel.categories[index], oncategorytap:oncategorytap,) , separatorBuilder:(context,index)=>SizedBox(height: 16.h)
              , itemCount:CategoryModel.categories.length))

        ],
      ),
    );
  }

}