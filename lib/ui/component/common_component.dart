import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_clone/ui/component/mouseHoverDetectableText.dart';

class CommonComponent {
  Widget getOutLine(
    BuildContext context,
    Widget body,
  ) {
    final drawerMenus = [
      [
        'Pro Tools',
        'Pro Videos',
        'Courses+',
        'Vision',
        'Learning Paths',
      ],
      [
        'Forums',
        'No Limit Hold\'em+',
        'Pot Limit Omaha+',
        'Multi-Table Tournaments+',
        'Other+',
        'Chatter+',
        'Courses+',
      ],
      [
        'More',
        'Group Coaching',
        'Books',
        'Monthly Elite Calls',
        'Run It Once Poker',
      ]
    ];

    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0E1217),
        title: size.width < 405
            ? SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: size.width > 345
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 25,
                            maxWidth: 25,
                          ),
                          child: Image.asset('images/rio_logo.jpg'),
                        ),
                        Text(
                          'Run It Once',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    if (size.width > 345)
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: MouseHoverDetectableText(
                          text: 'LOG IN',
                          mode: OnEnterMode.textColor,
                          defaultFontSize: 12,
                          defaultFontWeight: FontWeight.bold,
                        ),
                      ),
                    if (size.width <= 345) const SizedBox(width: 40),
                    ElevatedButton(
                      child: Text(size.width > 345 ? 'SIGN UP FREE' : 'LOG IN'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        primary: Colors.red,
                        onPrimary: Colors.white,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            : Row(
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
                        ),
                        if (size.width > 845) ...[
                          if (size.width > 1030) ...[
                            SizedBox(
                              height: 30,
                              width: 50,
                              child: VerticalDivider(
                                thickness: 1,
                                width: 50,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Training',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          SizedBox(width: size.width <= 1030 ? 50 : 66),
                          () {
                            if (size.width >= 1095 ||
                                (size.width <= 1030 && size.width >= 910)) {
                              return Text(
                                'Pro Videos',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              );
                            } else /* if (size.width< 1095 && size.width > 1030) */ {
                              return Text(
                                'Pro\nVideos',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              );
                            }
                          }(),
                          SizedBox(width: size.width < 960 ? 10 : 20),
                          Text(
                            'Courses',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: size.width < 960 ? 10 : 20),
                          Text(
                            'Vision',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 50,
                            child: VerticalDivider(
                              thickness: 1,
                              width: size.width < 960 ? 30 : 50,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Forums',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: size.width < 960 ? 10 : 20),
                          Text(
                            'More',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      if (size.width > 845)
                        () {
                          if (size.width >= 1095 ||
                              (size.width <= 1030 && size.width >= 910)) {
                            return MouseHoverDetectableText(
                              text: 'Go to Run It Once Poker',
                              mode: OnEnterMode.textColor,
                              defaultFontSize: 14,
                            );
                          } else {
                            return MouseHoverDetectableText(
                              text: 'Go to Run It Once\nPoker',
                              mode: OnEnterMode.textColor,
                              defaultFontSize: 14,
                            );
                          }
                        }(),
                      SizedBox(width: size.width < 960 ? 10 : 20),
                      MouseHoverDetectableText(
                        text: 'LOG IN',
                        mode: OnEnterMode.textColor,
                        defaultFontSize: 14,
                        defaultFontWeight: FontWeight.bold,
                      ),
                      SizedBox(width: size.width < 960 ? 10 : 20),
                      ElevatedButton(
                        child: const Text('  SIGN UP FREE  '),
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
      drawer: size.width <= 845
          ? SizedBox(
              width: size.width,
              child: Drawer(
                child: Stack(
                  children: [
                    ColoredBox(
                      color: Color(0xFF0E1217),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 66,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 32),
                                  child: Row(
                                    children: [
                                      ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxHeight: 30,
                                          maxWidth: 30,
                                        ),
                                        child: Image.asset(
                                            'images/rio_logo_red.png'),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        'Run It Once',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ...drawerMenus.map((menu) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...menu.map(
                                  (item) {
                                    if (menu.indexOf(item) != 0) {
                                      if (item.endsWith('+')) {
                                        return Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(32, 7, 32, 7),
                                          child: Row(
                                            children: [
                                              Text(
                                                item.substring(
                                                    0, item.length - 1),
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const Icon(
                                                Icons.add,
                                                size: 16,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        );
                                      } else {
                                        return Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(32, 7, 32, 7),
                                          child: Text(
                                            item,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        );
                                      }
                                    } else {
                                      return Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(32, 7, 32, 7),
                                        child: Text(
                                          item,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                ),
                                const SizedBox(height: 20),
                              ],
                            );
                          }).toList(),
                          const SizedBox(height: 150),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
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
          () {
            if (size.width > 700) {
              return ConstrainedBox(
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
                              .map(
                                (text) => MouseHoverDetectableText(
                                  text: text,
                                  mode: OnEnterMode.underline,
                                ),
                              )
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
                              .map(
                                (text) => MouseHoverDetectableText(
                                  text: text,
                                  mode: OnEnterMode.underline,
                                ),
                              )
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
                              .map(
                                (text) => MouseHoverDetectableText(
                                  text: text,
                                  mode: OnEnterMode.underline,
                                ),
                              )
                              .toList(),
                          const SizedBox(width: double.infinity),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            } else if (size.width <= 700 && size.width > 150) {
              return Column(
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
                            .map(
                              (text) => MouseHoverDetectableText(
                                text: text,
                                mode: OnEnterMode.underline,
                              ),
                            )
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
                            .map(
                              (text) => MouseHoverDetectableText(
                                text: text,
                                mode: OnEnterMode.underline,
                              ),
                            )
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
                            .map(
                              (text) => MouseHoverDetectableText(
                                text: text,
                                mode: OnEnterMode.underline,
                              ),
                            )
                            .toList(),
                        const SizedBox(width: double.infinity),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const SizedBox(height: 460);
            }
          }(),
          SizedBox(height: size.width > 700 ? 66 : 5),
        ],
      ),
    );
  }
}
