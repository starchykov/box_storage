import 'package:flutter/cupertino.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  static Widget render() {
    return const CategoriesScreen();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                const Spacer(),
                const Text('No data'),
                const Spacer(),
              ],
            ),
          ),
        ],
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