// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum OnEnterMode {
  underline,
  textColor,
}

class MouseHoverDetectableText extends HookWidget {
  const MouseHoverDetectableText({
    required this.text,
    required this.mode,
    this.onTap,
    Color? defaultTextColor,
    Color? onHoverColor,
    double? defaultFontSize,
    this.textDecoration,
    this.defaultFontWeight,
  })  : defaultTextColor = defaultTextColor ?? Colors.grey,
        onHoverColor = onHoverColor ?? Colors.white,
        defaultFontSize = defaultFontSize ?? 12;

  final String text;
  final OnEnterMode mode;
  final void Function()? onTap;
  final Color defaultTextColor;
  final Color onHoverColor;
  final double defaultFontSize;
  final TextDecoration? textDecoration;
  final FontWeight? defaultFontWeight;

  @override
  Widget build(BuildContext context) {
    final hover = useState(false);
    if (mode == OnEnterMode.underline) {
      return GestureDetector(
        child: RichText(
          text: TextSpan(
            onEnter: (_) => hover.value = true,
            onExit: (_) => hover.value = false,
            text: text,
            style: TextStyle(
              decoration: hover.value ? TextDecoration.underline : null,
              color: defaultTextColor,
              fontSize: defaultFontSize,
              fontWeight: defaultFontWeight,
            ),
          ),
          overflow: TextOverflow.ellipsis,
        ),
        onTap: onTap == null ? () {} : onTap,
      );
    } else if (mode == OnEnterMode.textColor) {
      return GestureDetector(
        child: RichText(
          text: TextSpan(
            onEnter: (_) => hover.value = true,
            onExit: (_) => hover.value = false,
            text: text,
            style: TextStyle(
              decoration: textDecoration,
              color: hover.value ? onHoverColor : defaultTextColor,
              fontSize: defaultFontSize,
              fontWeight: defaultFontWeight,
            ),
          ),
          overflow: TextOverflow.ellipsis,
        ),
        onTap: onTap == null ? () {} : onTap,
      );
    }
    throw AssertionError('Unexpected type: $this}');
  }
}
