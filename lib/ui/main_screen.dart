import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rio_clone/ui/component/common_component.dart';
import 'package:rio_clone/ui/test_screen.dart';

class MainScreen extends HookWidget {
  const MainScreen({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => MainScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final commonComponent = CommonComponent();
    final hover = useState(false);
    return commonComponent.getOutLine(
      context,
      ListView(
        children: [
          const SizedBox(height: 300),
          Container(
            child: Text(
              'body',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 100,
              maxWidth: 100,
            ),
            child: RichText(
              text: TextSpan(
                text: 'mouse cursol',
                style:
                    TextStyle(color: hover.value ? Colors.red : Colors.black),
                onEnter: (_) => hover.value = true,
                onExit: (_) => hover.value = false,
              ),
            ),
          ),
          const SizedBox(height: 300),
          commonComponent.footer(context),
        ],
      ),
    );
  }
}
