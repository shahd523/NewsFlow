import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsapp/Core/AssetsManager.dart';
import 'package:newsapp/Core/StringsManager.dart';

class HomeDrawer extends StatefulWidget{
  final void Function() backhome;
  HomeDrawer({required this.backhome});
  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  String selectedval="light";
  String selectedlang="en";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 166.h,
            width:double.infinity,
            color: Theme.of(context).colorScheme.primary,
            child: Center(child: Text(StringsManager.newsapp,style: Theme.of(context).textTheme.titleMedium,)),

          ),
          Padding(padding: REdgeInsets.all(16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: (){widget.backhome();
                  Navigator.pop(context);},
                child: Row(
                children: [SvgPicture.asset(AssetsManager.homeicon,height: 24.h,width: 24.w,),
                SizedBox(width: 8.w,),
                Text(StringsManager.homee,style: Theme.of(context).textTheme.titleSmall,),

                        ],
                ),
              ),
              SizedBox(height: 24.h,),
              Divider(color: Colors.white,),
              SizedBox(height: 24.h,),
              Row(
                children: [
                  SvgPicture.asset(AssetsManager.themeicon,height: 24.h,width: 24.w,),
                  SizedBox(width: 8.w,),
                  Text(StringsManager.theme,style: Theme.of(context).textTheme.titleSmall,),

                ],
              ),
              SizedBox(height: 8.h,),
              InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)
                  )
                ),
                child: DropdownButton<String>(
                  value: selectedval,
                  borderRadius: BorderRadius.circular(16.r),
                    isExpanded: true,
                    iconEnabledColor: Theme.of(context).colorScheme.secondary,
                    iconDisabledColor: Theme.of(context).colorScheme.secondary,
                    dropdownColor:Theme.of(context).colorScheme.secondary ,
                    hint: Text(StringsManager.choseth),
                    style: Theme.of(context).textTheme.titleSmall,
                    items:[DropdownMenuItem(
                  value:"light" ,
                    child: Text(StringsManager.light)),
                  DropdownMenuItem(
                    value: "dark",
                      child: Text(StringsManager.dark))] ,
                    onChanged:(value){

                    setState(() {
                      selectedval=value!;
                    });

                    }),
              ),
              SizedBox(height: 24.h,),
              Divider(color: Colors.white,),
              SizedBox(height: 24.h,),
              Row(
                children: [
                  SvgPicture.asset(AssetsManager.langeicon,height: 24.h,width: 24.w,),
                  SizedBox(width: 8.w,),
                  Text(StringsManager.lange,style: Theme.of(context).textTheme.titleSmall,),

                ],
              ),
              InputDecorator(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)
                    )
                ),
                child: DropdownButton<String>(
                    value: selectedlang,
                    borderRadius: BorderRadius.circular(16.r),
                    isExpanded: true,
                    iconEnabledColor: Theme.of(context).colorScheme.secondary,
                    iconDisabledColor: Theme.of(context).colorScheme.secondary,
                    dropdownColor:Theme.of(context).colorScheme.secondary ,
                    hint: Text(StringsManager.lange),
                    style: Theme.of(context).textTheme.titleSmall,
                    items:[DropdownMenuItem(
                        value:"en" ,
                        child: Text(StringsManager.en)),
                      DropdownMenuItem(
                          value: "ar",
                          child: Text(StringsManager.ar))] ,
                    onChanged:(value){

                      setState(() {
                        selectedlang=value!;
                      });

                    }),
              ),





            ],
          ),
          )
        ],
      ),
    );
  }
}