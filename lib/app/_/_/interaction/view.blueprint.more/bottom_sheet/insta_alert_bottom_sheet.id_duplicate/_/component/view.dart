import 'package:flutter/material.dart';

import '../../../../../../../../../../main.dart';
import 'state.dart';
import '_/params.dart';
import '_/config/view_skeleton.dart';

class V extends StatefulWidget {
  const V({super.key, this.tag, required this.params});

  final String? tag;
  final NewParams params;

  @override
  State<V> createState() => _VState();
}

class _VState extends State<V> {
  @override
  Widget build(BuildContext context) {
    return JuneBuilder(
      () => NewState(),
      tag: widget.tag,
      autoRemove: false,
      builder: (state) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(30),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black, width: 2, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(1000),
              // color: Colors.yellowAccent,
            ),
            child:
            SvgPicture.asset('assets/view/insta_alert_bottom_sheet/overlap.svg').paddingDirectional(all: 25),
          ),
          Gap(10),
          Text("ID duplication").fontSize(20).fontWeight(FontWeight.w600),
          Gap(10),
          Text("This ID already exists. \nPlease try again on the website.")
              .textAlignment(TextAlign.center)
              .fontSize(14)
              .textColor(Colors.grey),
          Gap(30),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              side: BorderSide(color: Colors.black, width: 2), // 테두리 색상과 두께 설정
            ),
            child: Text('Back to home')
                .fontWeight(FontWeight.bold)
                .textColor(Colors.black)
                .padding(vertical: 15, horizontal: 20),
          ),
          Gap(30),
        ],
      ).backgroundColor(Theme.of(context).colorScheme.background),
    );
  }
}

main() async {
  MyAppHome = NewView(params: NewParams());

  return buildApp();
}

