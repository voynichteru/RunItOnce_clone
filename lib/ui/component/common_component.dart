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
        title: const Text('RIO clone'),
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
    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 310),
          child: ColoredBox(color: Colors.red),
        ),
        ColoredBox(
          color: Color(0xFF1D1D1D),
          child: Column(
            children: [
              const SizedBox(height: 66),
              ConstrainedBox(
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
              ),
              const SizedBox(height: 66),
            ],
          ),
        ),
      ],
    );
  }
}
