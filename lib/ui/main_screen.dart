import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rio_clone/ui/component/common_component.dart';

class MainScreen extends HookWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final commonComponent = CommonComponent();
    return commonComponent.getOutLine(
      context,
      ListView(
        children: [
          const SizedBox(height: 200),
          Container(
            child: Text(
              'body',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 200),
          commonComponent.footer(context),
        ],
      ),
    );
  }
}
