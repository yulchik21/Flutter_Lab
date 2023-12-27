import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/screens/profile.dart';

import '../components/appbar.dart';
import 'options.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  String? selectedChoice;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              CustomAppbar(
                tabController: _tabController,
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: const [
              ProfileScreen(),
              OptionsScreen(),
            ],
          ),
        ),
      )
    );
  }
}
