import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BreweryCard extends StatefulWidget {
  final onCardPress;
  final name;
  final country;

  const BreweryCard({
    Key? key,
    @required this.onCardPress,
    @required this.name,
    @required this.country,
  }) : super(key: key);

  @override
  _BreweryCardState createState() => _BreweryCardState();
}

class _BreweryCardState extends State<BreweryCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onCardPress,
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: widget.onCardPress,
                  icon: Icon(Icons.navigate_next),
                  color: Colors.black,
                  iconSize: 10.w,
                ),
              ),
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
                      '${widget.name}',
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
                      '${widget.country}',
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
    );
  }
}
