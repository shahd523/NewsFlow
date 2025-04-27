import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/Core/remote/ApiManager.dart';
import 'package:newsapp/Models/CategoryModel.dart';
import 'package:newsapp/UI/NewsList/Widgets/ArticlesList.dart';

class NewsList extends StatefulWidget{
  CategoryModel category;
  NewsList(this.category);

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: APIManager.getSources(widget.category.id), builder:(context,snapshot){
      if(snapshot.connectionState==ConnectionState.waiting){
        //loadingstate
        print("case1");
        return Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.secondary,));

      }else if(snapshot.hasError){
        //errorstate
        print("case2");
        return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(snapshot.error.toString()),
            ElevatedButton(onPressed: (){
              setState(() {
              });
            }, child:Text("Try Again",style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.secondary))

            )],
        );

      }

      var responce=snapshot.data;
       if(responce?.status=="error"){
         //error return from server
         print("case3");
         return  Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(responce?.message??" "),
             ElevatedButton(onPressed: (){
               setState(() {
               });
             }, child:Text("Try Again",style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.secondary),))

           ],
         );
       }
       //success state
      var sources=responce?.sources??[];
      print("case4");
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
                  text: source.name.toString(),

                )
                ).toList()
            ),
            SizedBox(height: 15.h,),
            Expanded(
              child: TabBarView(children:sources.map((source)=>ArticlesList(source)).toList()


              ),
            )

          ],
        ),


      );

    } );
  }
}
/**/