import 'package:airbnb_app/components/home/home_body_popular_item.dart';
import 'package:airbnb_app/size.dart';
import 'package:airbnb_app/styles.dart';
import 'package:flutter/material.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Column(
      children: [
        Text("한국 숙소에 직접 다녀간 게스트의 후기", style: h5()),
        Text("게스트 후기 2,500,500개 이상, 평균 평점 4.7점(5점 만점)", style: body1()),
        SizedBox(height: gap_m)
      ],
    );
  }

  Widget _buildPopularList() {
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0, star: 1.4),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1, star: 2.7),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2, star: 3.2),
      ],
    );
  }
}
