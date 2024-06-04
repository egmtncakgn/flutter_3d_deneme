import '/flutter_flow/flutter_flow_util.dart';
import 'icerik_widget.dart' show IcerikWidget;
import 'package:flutter/material.dart';

class IcerikModel extends FlutterFlowModel<IcerikWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
