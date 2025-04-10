

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/Core/AssetsManager.dart';
import 'package:newsapp/Core/StringsManager.dart';
import 'package:newsapp/Models/CategoryModel.dart';

class CategoryItem extends StatelessWidget{
  @override
  final CategoryModel category;
  final  void Function(CategoryModel cat) oncategorytap;
  CategoryItem({required this.category,required this.oncategorytap});
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: category.textDirection,
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,

        decoration:  BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(24.r)
        ),
        child: Row(
          children: [
            Image.asset(category.imagepath,height: 198.h,fit: BoxFit.cover,width: 170,),
            SizedBox(width: 10.w,),

            Expanded(
              child: Padding(
                padding:  REdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(category.title,style: Theme.of(context).textTheme.titleSmall,),
                  SizedBox(height: 70.h,),
                    ElevatedButton(onPressed: (){
                      oncategorytap(category);
                    },style: ElevatedButton.styleFrom(backgroundColor: Colors.grey,
                  padding: EdgeInsets.zero),
                      child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Padding(
                          padding:  REdgeInsetsDirectional.only(start: 16),
                          child: Text(StringsManager.viewall,style: Theme.of(context).textTheme.titleMedium,),
                        )
                      ,CircleAvatar(
                          radius: 30.r,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_forward_ios,color: Theme.of(context).colorScheme.secondary,),
                        )
                      ],
                      ))

                ],),
              ),
            )
          ],
        ),
      ),
    );
  }

}