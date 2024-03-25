import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../../../../../../../main.dart';
import '_/component/_/config/view_skeleton.dart';

void NewBottomSheet(BuildContext context) async {
  await showBarModalBottomSheet(
      // barrierColor: Colors.black54,
      //배경색
      expand: false,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => NewView(
            params: NewParams(),
          ).backgroundColor(Theme.of(context).colorScheme.background));
}
