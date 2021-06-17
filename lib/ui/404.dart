import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rio_clone/ui/component/common_component.dart';

class UnknownScreen extends HookWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => UnknownScreen());
  }

  @override
  Widget build(BuildContext context) {
    final cc = CommonComponent();
    return cc.getOutLine(
      context,
      ListView(
        children: [
          const SizedBox(height: 300),
          Center(
            child: SelectableText(
              '404 ;(',
              style: TextStyle(fontSize: 60),
            ),
          ),
          const SizedBox(height: 300),
          cc.footer(context),
        ],
      ),
    );
  }
}
