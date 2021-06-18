import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomTextFormField extends HookWidget {
  const CustomTextFormField({
    Key? key,
    this.textInputAction,
    this.autofillHints,
  }) : super(key: key);

  final TextInputAction? textInputAction;
  final Iterable<String>? autofillHints;

  @override
  Widget build(BuildContext context) {
    final _focusNode = useFocusNode();
    final _controller = useTextEditingController();

    _focusNode.addListener(() {
      // TODO: how to use this method???
      debugPrint("Focus Change : " + _focusNode.hasFocus.toString());
    });

    return TextFormField(
      maxLines: 1,
      focusNode: _focusNode,
      controller: _controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: _focusNode.hasFocus ? Colors.grey : Colors.grey[800],
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 0),
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
      ),
      textInputAction: textInputAction,
      autofillHints: autofillHints,
      // AutoFillEdrror -> https://github.com/flutter/engine/pull/26492
    );
  }
}
