import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeago/timeago.dart' as timeago;

class ArticleItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(context: context, builder:(context)=>AlertDialog(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          contentPadding: REdgeInsetsDirectional.all(8),
          insetPadding: REdgeInsets.all(16),
          content: Container(
            alignment: Alignment.bottomCenter,
            height: ScreenUtil().setHeight(367),
            width: ScreenUtil().screenWidth,

            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: CachedNetworkImage(imageUrl: "https://play-lh.googleusercontent.com/zQIXMNP87brRkMSRRiALQkgF-JRQeBW5vMgqwUt3xMwKw3yeZeZyH1GU6lzXNbDBuRM=w240-h480-rw"
                      ,height: 220.h,fit: BoxFit.cover,width: double.infinity,
                      placeholder: (context,url)=>Center(child: CircularProgressIndicator()),
                      errorWidget: (context,url,error)=>Icon(Icons.error,size: 40.sp,),)),
                SizedBox(height: 8.h,),
                Text("A 40-year-old man has fallen approximately 200 feet to his death while canyoneering with three others at Zion National Park in Utah, authorities confirmed.\r\nThe incident occurred on Saturday when the…"
                ,style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14.sp),maxLines: 4,
                overflow: TextOverflow.ellipsis,),
                SizedBox(height: 8.h,),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary
                    ),
                    child:Text("View Full Articel",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 16.sp),))


              ],
            ),
          ),
        )
        );
      },
      child: Container(
        padding: REdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: Theme.of(context).colorScheme.secondary)

        ),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
              child: CachedNetworkImage(imageUrl: "https://play-lh.googleusercontent.com/zQIXMNP87brRkMSRRiALQkgF-JRQeBW5vMgqwUt3xMwKw3yeZeZyH1GU6lzXNbDBuRM=w240-h480-rw"
                ,height: 220.h,fit: BoxFit.cover,width: double.infinity,
                placeholder: (context,url)=>Center(child: CircularProgressIndicator()),
                errorWidget: (context,url,error)=>Icon(Icons.error,size: 40.sp,),)),
          SizedBox(height: 10.h,),
          Column(
            children: [
              Text("40-year-old man falls 200 feet to his death while canyoneering at national park",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 16.sp),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,),
              SizedBox(height: 10.h,),
              Row(
                children: [
                 Expanded(flex: 3,
                     child: Text("By : Jon Haworth",style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.grey),)
                 ),
                  Expanded(flex: 1,
                      child: Text(timeago.format(DateTime.now().subtract(Duration(minutes: 20))),textAlign: TextAlign.end,style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.grey),))
                ],
              )
            ],
          )
        ],

        ),
      ),
    );
  }

}