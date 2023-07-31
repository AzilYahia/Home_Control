
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../widgets/HomeContainer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> colors = [
    const Color(0xFFa0d5b4),
    const Color(0xFFfcdbdb),
    const Color(0xFFe6dded),
    kLightestBlue,
    const Color(0xFFf7e681),
    const Color(0xFFdbe7cb),
    kLightBlue,
    const Color(0xFFdfd8e2),
    const Color(0xFFfddbcf),
    const Color(0xFFede5f2),
    const Color(0xFFfcdbdb),
    const Color(0xFFeef1e4),
    kLightBlue,
    const Color(0xFFfcdbdb),
    const Color(0xFFf7e681),
    const Color(0xFFcac4cc),
    const Color(0xFFdbe7cb),
    kLightestBlue,
    const Color(0xFFa0d5b4),
    const Color(0xFFfcdbdb),
    kLightestBlue,
    const Color(0xFFf7e681),
    const Color(0xFFfddbcf),
    kLightBlue,
    const Color(0xFFfcdbdb),
    const Color(0xFFdbe7cb),
    const Color(0xFFeef1e4),
    kLightBlue,
    const Color(0xFFfcdbdb),
    const Color(0xFFf7e681),
    const Color(0xFFdbe7cb),
    kLightestBlue,
  ];
  bool active = false;
  Color activeColor = const Color(0x9983FBA5);
  Color appBarAndBottomBarColor = const Color(0x33D3E8D3);
  int _selectedIndex = 0;
  List<Icon> icons = [
    const Icon(Icons.home),
    const Icon(Icons.cell_tower_sharp),
    const Icon(Icons.security),
    const Icon(Icons.person_outline),
  ];

  List<HomeContainer> homeContainers = [
    HomeContainer(
      index: 1,
      icon: Icons.home_outlined,
      text: "Temperature",
      additionalText: "30°C",
    ),
    HomeContainer(
      index: 1,
      icon: Icons.water_drop_outlined,
      text: "Humidity",
      additionalText: "57%",
    ),
    HomeContainer(
      index: 1,
      icon: Icons.key,
      text: "Security",
    ),

    HomeContainer(
      index: 2,
      icon: Icons.light,
      text: "Living room light",
    ),
    HomeContainer(
      index: 3,
      icon: Icons.garage,
      text: "Garage door",
    ),
    HomeContainer(
      index: 4,
      icon: Icons.podcasts,
      text: "Youssef's Pod",
    ),
    HomeContainer(
      index: 4,
      icon: Icons.light,
      text: "Bathroom light",
    ),
    HomeContainer(
      index: 4,
      icon: Icons.looks_one_outlined,
      text: "Room 1",
    ),
    HomeContainer(
      index: 4,
      icon: Icons.live_tv,
      text: "Living room TV",
    ),
  ];

  BoxDecoration activeBottomBarItemDecoration = BoxDecoration(
    color: const Color(0xFFD3E8D3),
    borderRadius: BorderRadius.circular(43),
  );
  BoxDecoration unActiveBottomBarItemDecoration = BoxDecoration(
    // color: Color(0xFFD3E8D3),
    borderRadius: BorderRadius.circular(43),
  );

  BottomNavigationBarItem buildBottomNavigationBarItem(
      IconData icon, String label, int itemIndex) {
    return BottomNavigationBarItem(
      icon: Container(
        decoration: _selectedIndex == itemIndex
            ? activeBottomBarItemDecoration
            : unActiveBottomBarItemDecoration,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
          child: Icon(
            icon,
            // color: Colors.white,
          ),
        ),
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarItems = [
      buildBottomNavigationBarItem(Icons.home, "Home", 0),
      buildBottomNavigationBarItem(Icons.cell_tower_sharp, "Devices", 1),
      buildBottomNavigationBarItem(Icons.security, "Security", 2),
      buildBottomNavigationBarItem(Icons.person_outline, "Profile", 3),
    ];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: appBarAndBottomBarColor,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: lightColorScheme.primary,
          iconSize: 30,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: bottomNavigationBarItems,
        ),
        appBar: AppBar(
          backgroundColor: appBarAndBottomBarColor,
          // backgroundColor: lightColorScheme.primaryContainer,
          title: Text(
            "Home Control",
            style: GoogleFonts.poppins(),
          ),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
            color: kDarkBlue,
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications_none,
                size: 30,
              ),
              color: kDarkBlue,
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.09,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: homeContainers.length,
                  itemBuilder: (context, index) {
                    return homeContainers[index];
                  }),
            ),
          ),
        ));
  }
}