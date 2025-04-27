import 'package:flutter/material.dart';
import 'package:newsapp/Core/StringsManager.dart';
import 'package:newsapp/Models/CategoryModel.dart';
import 'package:newsapp/UI/Categories/screen/Categories.dart';
import 'package:newsapp/UI/Home/Widgets/HomeDrawer.dart';
import 'package:newsapp/UI/NewsList/Screen/NewsList.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName="HomeScreen";
  bool isshow=false;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
 bool isshow=false;
  CategoryModel? selectedcategory;


  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(
        backhome: (){
          selectedcategory=null;
          isshow=false;
          setState(() {

          });
        },
      ),
      appBar: AppBar(
        title: Text(selectedcategory!=null?selectedcategory!.title: StringsManager.home),
        actions: [IconButton(onPressed: (){}, icon:Icon( Icons.search,color: Colors.black))],
      ),
      body:isshow?NewsList(selectedcategory!)
          :Categories(oncategoryselected),
    );
  }

oncategoryselected(CategoryModel category){

    setState(() {
      isshow=true;
      selectedcategory=category;
    });
}
}