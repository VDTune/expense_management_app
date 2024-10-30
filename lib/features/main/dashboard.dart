import 'package:expense_management_app/features/main/pages/input.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentPageIndex = 0;
  bool isChiTieuSelected = true;
  DateTime selectedDate = DateTime.now(); // Initialize with the current date
  List<String> imagePaths = [
    "assets/icons/user.png",
    "assets/icons/user.png",
    "assets/icons/user.png",
    "assets/icons/user.png",
    "assets/icons/user.png",
    "assets/icons/user.png",
    "assets/icons/user.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color(0xFFFF8303).withOpacity(0.1),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return const IconThemeData(color: Color(0xFFFF8303));
            }
            return const IconThemeData(color: Colors.grey);
          }),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        ),
        child: NavigationBar(
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(
              icon: ImageIcon(
                AssetImage('assets/icons/edit_icon.png'),
              ),
              label: 'Input',
            ),
            NavigationDestination(
              icon: ImageIcon(
                AssetImage('assets/icons/calendar.png'),
              ),
              label: 'Calendar',
            ),
            NavigationDestination(
              icon: ImageIcon(
                AssetImage('assets/icons/pie_chart.png'),
              ),
              label: 'Chart',
            ),
            NavigationDestination(
              icon: ImageIcon(
                AssetImage('assets/icons/user.png'),
              ),
              label: 'User',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0), // Add top margin here
        child: <Widget>[
          // Input page
          const InputScreen(),

          // Calendar page
          Card(
            shadowColor: Colors.transparent,
            margin: const EdgeInsets.all(8.0),
            child: const SizedBox.expand(
              child: Center(
                child: Text(
                  'Calendar page',
                ),
              ),
            ),
          ),
          // Chart page
          Card(
            shadowColor: Colors.transparent,
            margin: const EdgeInsets.all(8.0),
            child: const SizedBox.expand(
              child: Center(
                child: Text(
                  'Chart page',
                ),
              ),
            ),
          ),
          // User page
          Card(
            shadowColor: Colors.transparent,
            margin: const EdgeInsets.all(8.0),
            child: const SizedBox.expand(
              child: Center(
                child: Text(
                  'User page',
                ),
              ),
            ),
          ),
        ][currentPageIndex],
      ),
    );
  }

  // Function to get the day of the week
  String getDayOfWeek(DateTime date) {
    List<String> days = [
      'Chủ nhật',
      'Thứ hai',
      'Thứ ba',
      'Thứ tư',
      'Thứ năm',
      'Thứ sáu',
      'Thứ bảy'
    ];
    return days[date.weekday % 7];
  }
}
