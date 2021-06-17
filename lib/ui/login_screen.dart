import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rio_clone/ui/component/common_component.dart';
import 'package:rio_clone/ui/component/mouseHoverDetectableText.dart';

class LoginScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cc = CommonComponent();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: size.height,
          maxWidth: size.width,
        ),
        child: Stack(
          children: [
            Image.asset(
              'images/login_background.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.topLeft,
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
            Center(
              child: Container(
                width: 616,
                height: 331,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF3A3A3A).withOpacity(0.5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MouseHoverDetectableText(
                        text: 'Forgot Password?',
                        mode: OnEnterMode.textColor,
                        /*  textDecoration: TextDecoration.underline, */
                        defaultTextColor: Color(0xFFA7A7A7),
                        defaultFontSize: 12,
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
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Username or Email',
                          labelStyle: TextStyle(
                            color: Color(0xFF878282),
                            fontSize: 13,
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        autofillHints: [AutofillHints.username],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Username or Email',
                                  style: TextStyle(
                                    color: Color(0xFF878282),
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              /* TextField(
                                decoration: InputDecoration(
                                  labelText: 'Username or Email',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF878282),
                                    fontSize: 13,
                                  ),
                                ),
                                textInputAction: TextInputAction.next,
                                autofillHints: [AutofillHints.username],
                              ), */
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Password',
                                  style: TextStyle(
                                    color: Color(0xFF878282),
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              /* TextField(
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF878282),
                                    fontSize: 13,
                                  ),
                                ),
                                autofillHints: [AutofillHints.password],
                                onEditingComplete: () =>
                                    TextInput.finishAutofillContext(),
                              ), */
                            ],
                          ),
                          const SizedBox(width: 20),
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
                        ],
                      ),
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
          ],
        ),
      ),
    );
  }
}
