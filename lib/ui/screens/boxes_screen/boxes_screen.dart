import 'package:flutter/cupertino.dart';

class BoxesScreen extends StatelessWidget {
  const BoxesScreen({Key? key}) : super(key: key);

  static Widget render() {
    return const BoxesScreen();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              border: null,
              backgroundColor: CupertinoColors.systemFill.withOpacity(.0),
              largeTitle: const Text('Boxes'),
            ),
            const SliverFillRemaining(
              child: Center(
                child: Text('No data'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
