import 'package:airbnb_app/constants.dart';
import 'package:airbnb_app/size.dart';
import 'package:airbnb_app/styles.dart';
import 'package:flutter/material.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];
  final star;

  HomeBodyPopularItem({required this.id, this.star = 0});

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Padding(
      padding: EdgeInsets.only(bottom: gap_xl),
      child: Container(
        constraints: BoxConstraints(minWidth: 320),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(star),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${popularList[id]}", fit: BoxFit.cover),
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemStar(star) {
    return Column(
      children: [
        Row(
          children: [
            for (var i = 5; i-- > 0; star--)
              star >= 0.5
                  ? Icon(Icons.star, color: kAccentColor)
                  : star <= 0
                      ? Icon(Icons.star_border, color: kAccentColor)
                      : Icon(Icons.star_half, color: kAccentColor),
          ],
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          "asdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdas",
        ),
        SizedBox(height: gap_s)
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(backgroundImage: AssetImage("assets/p1.jpeg")),
        SizedBox(width: gap_s),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("데어", style: subtitle1()),
            Text("한국"),
          ],
        ),
      ],
    );
  }
}
