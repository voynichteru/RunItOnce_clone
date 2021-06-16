// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum OnEnterMode {
  underline,
  textColor,
}

class MouseHoverDetectableText extends HookWidget {
  const MouseHoverDetectableText(
    this.text,
    this.mode, {
    Color? defaultTextColor,
    double? defaultFontSize,
    this.defaultFontWeight,
  })  : defaultTextColor = defaultTextColor ?? Colors.grey,
        defaultFontSize = defaultFontSize ?? 12;

  final String text;
  final OnEnterMode mode;
  final Color defaultTextColor;
  final double defaultFontSize;
  final FontWeight? defaultFontWeight;

  @override
  Widget build(BuildContext context) {
    final hover = useState(false);
    if (mode == OnEnterMode.underline) {
      return GestureDetector(
        child: MouseRegion(
          onEnter: (_) => hover.value = true,
          onExit: (_) => hover.value = false,
          child: Text(
            text,
            style: TextStyle(
              decoration: hover.value ? TextDecoration.underline : null,
              color: defaultTextColor,
              fontSize: defaultFontSize,
              fontWeight: defaultFontWeight,
            ),
          ),
        ),
        onTap: () {},
      );
    } else if (mode == OnEnterMode.textColor) {
      return GestureDetector(
        child: MouseRegion(
          onEnter: (_) => hover.value = true,
          onExit: (_) => hover.value = false,
          child: Text(
            text,
            style: TextStyle(
              color: hover.value ? Colors.white : defaultTextColor,
              fontSize: defaultFontSize,
              fontWeight: defaultFontWeight,
            ),
          ),
        ),
        onTap: () {},
      );
    }
    throw AssertionError('Unexpected type: $this}');
  }
}
