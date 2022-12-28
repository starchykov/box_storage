import 'package:flutter/cupertino.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  static Widget render() {
    return const DashboardScreen();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            border: null,
            backgroundColor: CupertinoColors.systemBackground.withOpacity(0),
            largeTitle: const Text('Dashboard'),
          ),
          const SliverFillRemaining(
            child: Center(
              child: Text('No data'),
            ),
          ),
        ],
      ),
    );
  }
}
