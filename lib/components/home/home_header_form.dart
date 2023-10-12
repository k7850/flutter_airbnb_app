import 'package:airbnb_app/components/common/common_form_field.dart';
import 'package:airbnb_app/constants.dart';
import 'package:airbnb_app/size.dart';
import 'package:airbnb_app/styles.dart';
import 'package:flutter/material.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: gap_m),
      child: Align(
        alignment: screenWidth < 520 ? Alignment(0, 0) : Alignment(-0.6, 0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Form(
            child: Padding(
              padding: EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildxFormField(),
                  _buildFormSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text("모두의 숙소에서 숙소를 검색하세요.", style: h4()),
        SizedBox(height: gap_xs),
        Text(
          "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은",
          style: body1(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildxFormField() {
    return Column(
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소"),
        SizedBox(height: gap_s),
        Row(children: [
          Expanded(child: CommonFormField(prefixText: "체크인", hintText: "날짜 입력")),
          SizedBox(width: gap_xs),
          Expanded(child: CommonFormField(prefixText: "체크아웃", hintText: "날짜 입력")),
        ]),
        SizedBox(height: gap_s),
        Row(children: [
          Expanded(child: CommonFormField(prefixText: "성인", hintText: "2")),
          SizedBox(width: gap_xs),
          Expanded(child: CommonFormField(prefixText: "어린이", hintText: "0")),
        ]),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: kAccentColor, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        onPressed: () => print("서브밋클릭"),
        child: Text("검색", style: subtitle1(mColor: Colors.white)),
      ),
    );
  }
}
