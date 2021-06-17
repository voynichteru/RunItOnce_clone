import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rio_clone/ui/component/common_component.dart';

class TestScreen extends HookWidget {
  const TestScreen({required this.userId});
  final String userId;

  static Route<dynamic> route({required String userId}) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => TestScreen(userId: userId),
    );
  }

  static const routeName = '/test';

  @override
  Widget build(BuildContext context) {
    final cc = CommonComponent();
    return cc.getOutLine(context, Text('test screen $userId'));
  }
}
