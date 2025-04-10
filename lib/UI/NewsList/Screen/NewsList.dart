import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/UI/NewsList/Widgets/ArticlesList.dart';

class NewsList extends StatelessWidget{
  static const List<String>sources=[
    "ABC News",
    "ABC News",
    "Ary News",
    "Ary News",
    "Bein",
    "Bein",
    "CBC",
    "CBC",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: sources.length,
      child: Column(
        children: [
          TabBar( isScrollable: true,
              indicatorColor: Theme.of(context).colorScheme.secondary,
              labelStyle: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 16.sp,fontWeight: FontWeight.w700),
              unselectedLabelStyle:  Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 14.sp,fontWeight: FontWeight.w500),
              tabAlignment: TabAlignment.start,
              dividerHeight: 0,
              tabs:sources.map((source)=>Tab(
            text: source,

          )
           ).toList()
          ),
          SizedBox(height: 15.h,),
          Expanded(
            child: TabBarView(children:sources.map((source)=>ArticlesList()).toList()


            ),
          )

        ],
      ),


    );
  }

}