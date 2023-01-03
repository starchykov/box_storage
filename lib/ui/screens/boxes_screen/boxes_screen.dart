import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxesScreen extends StatelessWidget {
  const BoxesScreen({Key? key}) : super(key: key);

  static Widget render() {
    return const BoxesScreen();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            border: null,
            backgroundColor: CupertinoColors.systemFill.withOpacity(.0),
            trailing: CupertinoButton(
              minSize: 0,
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: const Icon(CupertinoIcons.add),
            ),
            largeTitle: const Text('Boxes'),
          ),
          SliverFillRemaining(
            child: Column(
              children: const [
                _BoxItem(),
                _BoxItem(),
                _BoxItem(),
                _BoxItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BoxItem extends StatelessWidget {
  const _BoxItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
        width: MediaQuery.of(context).size.width,
        height: 150.0,
        decoration: const BoxDecoration(
          color: CupertinoColors.secondarySystemFill,
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: (MediaQuery.of(context).size.width) * .63,
                  decoration: const BoxDecoration(
                    color: CupertinoColors.systemBlue,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'S: '.toUpperCase(),
                              style: CupertinoTheme.of(context)
                                  .textTheme
                                  .pickerTextStyle
                                  .merge(TextStyle(color: CupertinoColors.label.withOpacity(.5))),
                              children: [
                                TextSpan(
                                  text: 'A',
                                  style: CupertinoTheme.of(context)
                                      .textTheme
                                      .pickerTextStyle.merge(
                                    TextStyle(
                                      color: CupertinoColors.label.withOpacity(.5),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 12.0),
                          RichText(
                            text: TextSpan(
                              text: 'N: '.toUpperCase(),
                              style: CupertinoTheme.of(context)
                                  .textTheme
                                  .pickerTextStyle.merge(TextStyle(color: CupertinoColors.label.withOpacity(.5))),
                              children: [
                                TextSpan(
                                  text: '12345 ',
                                  style: CupertinoTheme.of(context)
                                      .textTheme
                                      .pickerTextStyle.merge(
                                        TextStyle(
                                          color: CupertinoColors.label.withOpacity(.5),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Category:',
                            style: CupertinoTheme.of(context)
                                .textTheme
                                .textStyle
                                .merge(TextStyle(color: CupertinoColors.label.withOpacity(.5))),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                            decoration: const BoxDecoration(
                              color: CupertinoColors.separator,
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Center(
                              child: Text(
                                'Name',
                                style: CupertinoTheme.of(context)
                                    .textTheme
                                    .tabLabelTextStyle
                                    .merge(const TextStyle(color: CupertinoColors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description:',
                            style: CupertinoTheme.of(context)
                                .textTheme
                                .textStyle
                                .merge(TextStyle(color: CupertinoColors.label.withOpacity(.5))),
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing',
                            style: CupertinoTheme.of(context)
                                .textTheme
                                .tabLabelTextStyle
                                .merge(const TextStyle(color: CupertinoColors.label)),
                          ),
                        ],
                      ),
                      Text(
                        'Packed date: 01.01.2023',
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .textStyle
                            .merge(TextStyle(color: CupertinoColors.label.withOpacity(.5))),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: (MediaQuery.of(context).size.width) * .30,
                  decoration: const BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'S: _ N: __'.toUpperCase(),
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .navTitleTextStyle
                            .merge(TextStyle(color: CupertinoColors.label.withOpacity(.5))),
                      ),
                      Expanded(
                        child: Container(
                          width: double.maxFinite,
                          height: double.maxFinite,
                          padding: const EdgeInsets.all(8.0),
                          child: const Placeholder(),
                        ),
                      ),
                      Text(
                        '01.01.2023'.toUpperCase(),
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .navTitleTextStyle
                            .merge(TextStyle(color: CupertinoColors.label.withOpacity(.5))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: -10.0,
              right: (MediaQuery.of(context).size.width - 30.0) * .3,
              child: CircleAvatar(
                radius: 10.0,
                backgroundColor: CupertinoTheme.of(context).brightness == Brightness.dark
                    ? CupertinoColors.black
                    : CupertinoColors.systemGroupedBackground,
              ),
            ),
            Positioned(
              top: 18.0,
              right: ((MediaQuery.of(context).size.width - 30.0) * .3) + 5.0,
              height: 120.0,
              width: 5.0,
              child: CustomPaint(size: const Size(1, 125), painter: DashedLineVerticalPainter()),
            ),
            Positioned(
              bottom: -10.0,
              right: (MediaQuery.of(context).size.width - 30.0) * .3,
              child: CircleAvatar(
                radius: 10.0,
                backgroundColor: CupertinoTheme.of(context).brightness == Brightness.dark
                    ? CupertinoColors.black
                    : CupertinoColors.systemGroupedBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 5.0, dashSpace = 5.0, startY = 0.0;
    final paint = Paint()
      ..color = CupertinoColors.white
      ..strokeWidth = 4;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
