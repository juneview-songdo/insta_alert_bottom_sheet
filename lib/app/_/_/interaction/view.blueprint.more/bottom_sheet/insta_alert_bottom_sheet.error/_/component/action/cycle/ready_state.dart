import 'package:flutter/material.dart';

import '../../../../../../../../../../../../main.dart';
import '../../_/params.dart';
import '../../state.dart';

Future<void> readyStateAction(BuildContext context, NewParams params,
    {String? tag}) async {
  NewState state = June.getState(NewState(), tag: tag);

  state.setState();
}
