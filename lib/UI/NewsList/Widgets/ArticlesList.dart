import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/Core/remote/ApiManager.dart';
import 'package:newsapp/UI/NewsList/Widgets/ArticleItem.dart';
import 'package:newsapp/UI/Sources%20Responce/Sources.dart';
import 'package:newsapp/UI/articles%20responce/articles.dart';

class ArticlesList extends StatefulWidget{
  Sources source;
  ArticlesList(this.source);

  @override
  State<ArticlesList> createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: APIManager.getarticles(widget.source.id!), builder: (context,snapshot){
      if(snapshot.connectionState==ConnectionState.waiting){
        //loadingstate
        return Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.secondary,));

      }else if(snapshot.hasError){
        //errorstate
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
      List<Articles>articles=responce?.articles??[];
      if(articles.isEmpty){
        return Center(child: Text("No Articles Found",style:Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.secondary),));
      }
      return ListView.separated(itemBuilder:(context,index)=>ArticleItem(articles[index]) ,
          separatorBuilder:(context,index)=>SizedBox(height: 16.h,), itemCount:articles.length);
    }
    );
  }
}
/*ListView.separated(itemBuilder:(context,index)=>ArticleItem() ,
        separatorBuilder:(context,index)=>SizedBox(height: 16.h,), itemCount:10);*/