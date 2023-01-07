import 'package:flutter/cupertino.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  static Widget render() {
    return const CategoriesScreen();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              border: null,
              backgroundColor: CupertinoColors.systemBackground.withOpacity(0),
              trailing: CupertinoButton(
                minSize: 0,
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: const Icon(CupertinoIcons.add),
              ),
              largeTitle: const Text('Categories'),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 100.0,
                    width: double.maxFinite,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        _AddCategory(),
                        _Categories(),
                        _Categories(),
                        _Categories(),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: _ScanCode(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddCategory extends StatelessWidget {
  const _AddCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.only(left: 16, top: 8),
      onPressed: () {},
      child: Container(
        height: 100,
        width: (MediaQuery.of(context).size.width / 3.5) - 12 * 2,
        decoration: const BoxDecoration(
          color: CupertinoColors.secondarySystemFill,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(CupertinoIcons.add),
            Text('Add'),
          ],
        ),
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  const _Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.only(left: 16.0, top: 8.0),
      onPressed: () {},
      child: Container(
        padding: const EdgeInsets.all(12.0),
        height: 100.0,
        width: (MediaQuery.of(context).size.width / 3.5) - 12 * 2.0,
        decoration: const BoxDecoration(
          color: CupertinoColors.secondarySystemFill,
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            Text(
              '12 items',
              style: CupertinoTheme.of(context).textTheme.tabLabelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class _ScanCode extends StatelessWidget {
  const _ScanCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: CupertinoColors.secondarySystemFill,
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
              ),
              const SizedBox(width: 16.0),
              SizedBox(
                height: 195,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            style: CupertinoTheme.of(context).textTheme.pickerTextStyle.merge(
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
                            .pickerTextStyle
                            .merge(TextStyle(color: CupertinoColors.label.withOpacity(.5))),
                        children: [
                          TextSpan(
                            text: '12345 ',
                            style: CupertinoTheme.of(context).textTheme.pickerTextStyle.merge(
                                  TextStyle(
                                    color: CupertinoColors.label.withOpacity(.5),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12.0),
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
                    const SizedBox(height: 16.0),
                    Column(
                      mainAxisSize: MainAxisSize.max,
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
                          'Lorem Ipsum is simply dummy ',
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .tabLabelTextStyle
                              .merge(const TextStyle(color: CupertinoColors.label)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date:',
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .textStyle
                              .merge(TextStyle(color: CupertinoColors.label.withOpacity(.5))),
                        ),
                        Text(
                          'Lorem Ipsum is simply dummy ',
                          style: CupertinoTheme.of(context)
                              .textTheme
                              .tabLabelTextStyle
                              .merge(const TextStyle(color: CupertinoColors.label)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
