import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_rns/AllProviders/breweries_provider.dart';
import 'package:sizer/sizer.dart';

class ViewBrewery extends StatelessWidget {
  BreweriesProvider? provider;
  final index;

  ViewBrewery({this.provider, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('${(provider)!.breweries[index].name}'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 5.h,
        ),
        height: 30.h,
        child: Card(
          color: Colors.black,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.h),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: 1.5.h,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
              vertical: 3.h,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.0.h,
                        bottom: 2.h,
                      ),
                      child: Text(
                        '${(provider)!.breweries[index].name}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 1.h,
                      ),
                      child: Text(
                        '${(provider)!.breweries[index].country}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.0.h,
                        bottom: 2.h,
                      ),
                      child: Text(
                        '${(provider)!.breweries[index].state}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 2.h,
                      ),
                      child: Text(
                        '${(provider)!.breweries[index].breweryType}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
