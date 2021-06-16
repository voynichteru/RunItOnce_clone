import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_clone/ui/component/mouseHoverDetectableText.dart';

class CommonComponent {
  Widget getOutLine(
    BuildContext context,
    Widget body,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0E1217),
        title: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 30,
                      maxWidth: 30,
                    ),
                    child: Image.asset('images/rio_logo.jpg'),
                  ),
                  Text(
                    'Run It Once',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Go to Run It Once Poker',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  'LOG IN',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  child: const Text('Button'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    primary: Colors.red,
                    onPrimary: Colors.white,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
      body: body,
    );
  }

  Widget footer(BuildContext context) {
    final about = [
      'About Us',
      'Affiliates',
      'Poker Video App',
      'Meet The Pros',
      'Top Memver',
    ];
    final account = [
      'Contact',
      'Careers',
      'FAQ',
      'Plans & Pricing',
      'Terms & Conditions',
      'Data Protection Policy',
      'Privacy Policy',
    ];
    final social = [
      'Facebook',
      'Twitter',
      'Instagram',
      'Discord',
    ];
    final size = MediaQuery.of(context).size;
    return ColoredBox(
      color: Color(0xFF1D1D1D),
      child: Column(
        children: [
          SizedBox(height: size.width > 700 ? 66 : 20),
          size.width > 700
              ? ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 178,
                    maxWidth: double.infinity,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            const SizedBox(width: 50),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                const SelectableText(
                                  'Run It Once',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  '2021 Runt It Once. All rights reserved.',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 178,
                          maxWidth: 142,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SelectableText(
                              'About',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24),
                            ...about
                                .map((text) => MouseHoverDetectableText(text))
                                .toList(),
                            const SizedBox(width: double.infinity),
                          ],
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 178,
                          maxWidth: 142,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SelectableText(
                              'Account',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24),
                            ...account
                                .map((text) => MouseHoverDetectableText(text))
                                .toList(),
                            const SizedBox(width: double.infinity),
                          ],
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 178,
                          maxWidth: 142,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SelectableText(
                              'Social',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24),
                            ...social
                                .map((text) => MouseHoverDetectableText(text))
                                .toList(),
                            const SizedBox(width: double.infinity),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        const SelectableText(
                          'Run It Once',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '2021 Runt It Once. All rights reserved.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11.5,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 140,
                        maxWidth: 142,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SelectableText(
                            'About',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ...about
                              .map((text) => MouseHoverDetectableText(text))
                              .toList(),
                          const SizedBox(width: double.infinity),
                        ],
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 170,
                        maxWidth: 142,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SelectableText(
                            'Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ...account
                              .map((text) => MouseHoverDetectableText(text))
                              .toList(),
                          const SizedBox(width: double.infinity),
                        ],
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 150,
                        maxWidth: 142,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SelectableText(
                            'Social',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ...social
                              .map((text) => MouseHoverDetectableText(text))
                              .toList(),
                          const SizedBox(width: double.infinity),
                        ],
                      ),
                    ),
                  ],
                ),
          SizedBox(height: size.width > 700 ? 66 : 5),
        ],
      ),
    );
  }
}
