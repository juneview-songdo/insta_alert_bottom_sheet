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
      builder: (state) => Container(
        color: Colors.blue,
        // floatingActionButton: FloatingActionButtonKit(),
        child: const Text("New View")
            .textStyle(Theme.of(context).textTheme.displaySmall!)
            .fontWeight(FontWeight.bold)
            .textAlignment(TextAlign.center)
            .center(),
      ).height(300).width(1.sw),
    );
  }
}

main() async {
  MyAppHome = NewView(params: NewParams());

  return buildApp();
}

