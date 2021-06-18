import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rio_clone/ui/component/common_component.dart';
import 'package:rio_clone/ui/component/custom_text_form_field.dart';
import 'package:rio_clone/ui/component/mouseHoverDetectableText.dart';

class LoginScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cc = CommonComponent();
    final size = MediaQuery.of(context).size;
    final controller = useTextEditingController();

    double _getWidth(Size size) {
      if (size.width >= 750) {
        return 616;
      } else if (size.width >= 580) {
        return 550;
      } else {
        return size.width - 20;
      }
    }

    double _getHeight(Size size) {
      if (size.width >= 750) {
        return 331;
      } else if (size.width >= 580) {
        return 400;
      } else if (size.width >= 300) {
        return 470;
      } else {
        return 500;
      }
    }

    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: size.height,
          maxWidth: size.width,
        ),
        child: Stack(
          children: [
            if (size.width >= 750)
              Image.asset(
                'images/login_background.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment.topLeft,
              )
            else
              SizedBox(
                width: size.width,
                height: size.height,
                child: ColoredBox(color: Colors.black87),
              ),
            Positioned(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 60,
                  maxWidth: 60,
                ),
                child: Image.asset('images/login_logo.jpg'),
              ),
            ),
            if (size.width >= 580)
              Center(
                child: Container(
                  width: _getWidth(size),
                  height: _getHeight(size),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF3A3A3A).withOpacity(0.5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (size.width >= 750)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MouseHoverDetectableText(
                                text: 'Forgot Password?',
                                mode: OnEnterMode.textColor,
                                /*  textDecoration: TextDecoration.underline, */
                                defaultTextColor: Color(0xFFA7A7A7),
                                defaultFontSize: 12,
                              ),
                            ],
                          ),
                        RichText(
                          text: const TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              decoration: null,
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, bottom: size.width >= 580 ? 20 : 0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Username or Email',
                                        style: TextStyle(
                                          color: Color(0xFF878282),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 215,
                                    height: 30,
                                    child: CustomTextFormField(
                                      textInputAction: TextInputAction.next,
                                      autofillHints: [AutofillHints.username],
                                    ),
                                  ),
                                  if (size.width < 750)
                                    const SizedBox(height: 24),
                                ],
                              ),
                              if (size.width >= 580) ...[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: RichText(
                                          text: const TextSpan(
                                            text: 'Password',
                                            style: TextStyle(
                                              color: Color(0xFF878282),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 215,
                                        height: 30,
                                        child: CustomTextFormField(
                                          textInputAction: TextInputAction.next,
                                          autofillHints: [
                                            AutofillHints.password
                                          ],
                                        ),
                                      ),
                                      if (size.width < 750)
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: MouseHoverDetectableText(
                                            text: 'Forgot Password?',
                                            mode: OnEnterMode.textColor,
                                            /*  textDecoration: TextDecoration.underline, */
                                            defaultTextColor: Color(0xFFA7A7A7),
                                            defaultFontSize: 12,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                              if (size.width >= 750)
                                Padding(
                                  padding: EdgeInsets.only(top: 23),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      '  Log In  ',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red[700],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        if (size.width < 580)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Password',
                                      style: TextStyle(
                                        color: Color(0xFF878282),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 215,
                                  height: 30,
                                  child: CustomTextFormField(
                                    textInputAction: TextInputAction.next,
                                    autofillHints: [AutofillHints.password],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: MouseHoverDetectableText(
                                    text: 'Forgot Password?',
                                    mode: OnEnterMode.textColor,
                                    /*  textDecoration: TextDecoration.underline, */
                                    defaultTextColor: Color(0xFFA7A7A7),
                                    defaultFontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (size.width < 750)
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '  Log In  ',
                              style: TextStyle(fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[700],
                            ),
                          ),
                        const SizedBox(height: 35),
                        RichText(
                          text: const TextSpan(
                            text: 'Not a member?',
                            style: TextStyle(
                              decoration: null,
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            text:
                                'It only takes 30 seconds to start taking your game seriously.',
                            style: TextStyle(
                              decoration: null,
                              color: Color(0xFF999999),
                              fontSize: 13,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            ' Create An Account ',
                            style: TextStyle(fontSize: 12),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF8C8C8C),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            else
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10),
                child: Center(
                  child: Container(
                    width: _getWidth(size),
                    height: _getHeight(size),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF3A3A3A).withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (size.width >= 750)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MouseHoverDetectableText(
                                  text: 'Forgot Password?',
                                  mode: OnEnterMode.textColor,
                                  /*  textDecoration: TextDecoration.underline, */
                                  defaultTextColor: Color(0xFFA7A7A7),
                                  defaultFontSize: 12,
                                ),
                              ],
                            ),
                          RichText(
                            text: const TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                decoration: null,
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20, bottom: size.width >= 580 ? 20 : 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'Username or Email',
                                      style: TextStyle(
                                        color: Color(0xFF878282),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 215,
                                  height: 30,
                                  child: CustomTextFormField(
                                    textInputAction: TextInputAction.next,
                                    autofillHints: [AutofillHints.username],
                                  ),
                                ),
                                if (size.width < 750)
                                  const SizedBox(height: 24),
                              ],
                            ),
                          ),
                          if (size.width < 580)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Password',
                                        style: TextStyle(
                                          color: Color(0xFF878282),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 215,
                                    height: 30,
                                    child: CustomTextFormField(
                                      textInputAction: TextInputAction.next,
                                      autofillHints: [AutofillHints.password],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: MouseHoverDetectableText(
                                      text: 'Forgot Password?',
                                      mode: OnEnterMode.textColor,
                                      /*  textDecoration: TextDecoration.underline, */
                                      defaultTextColor: Color(0xFFA7A7A7),
                                      defaultFontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (size.width < 750)
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                '  Log In  ',
                                style: TextStyle(fontSize: 12),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red[700],
                              ),
                            ),
                          const SizedBox(height: 35),
                          RichText(
                            text: const TextSpan(
                              text: 'Not a member?',
                              style: TextStyle(
                                decoration: null,
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              text:
                                  'It only takes 30 seconds to start taking your game seriously.',
                              style: TextStyle(
                                decoration: null,
                                color: Color(0xFF999999),
                                fontSize: 13,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              ' Create An Account ',
                              style: TextStyle(fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF8C8C8C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
