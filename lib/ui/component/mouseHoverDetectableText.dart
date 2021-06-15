// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MouseHoverDetectableText extends HookWidget {
  const MouseHoverDetectableText(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    final hover = useState(false);
    return GestureDetector(
      child: MouseRegion(
        onEnter: (_) => hover.value = true,
        onExit: (_) => hover.value = false,
        child: Text(
          text,
          style: TextStyle(
            decoration: hover.value ? TextDecoration.underline : null,
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
