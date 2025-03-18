import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common_widget/tab_button.dart';
import 'package:food_delivery_app/veiw/home/home_veiw.dart';

class MainTabVeiw extends StatefulWidget {
  const MainTabVeiw({super.key});

  @override
  State<MainTabVeiw> createState() => _MainTabVeiwState();
}

class _MainTabVeiwState extends State<MainTabVeiw> {
  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeVeiw();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      backgroundColor: const Color(0xfff5f5f5),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            if (selectTab != 2) {
              selectTab = 2;
              selectPageView = const HomeVeiw();
            } else {}
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor: selectTab == 2 ? TColor.primary : TColor.placeholder,
          child: Image.asset(
            "assets/images/tab_home.png",
            width: 35,
            height: 35,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: TColor.white,
        surfaceTintColor: TColor.white,
        elevation: 1,
        notchMargin: 15,
        height: 64,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                  title: "Menu",
                  icon: "assets/images/tab_menu.png",
                  onTap: () {
                    if (selectTab != 0) {
                      selectTab = 0;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 0,
                ),
          
          
                TabButton(
                  title: "Offer",
                  icon: "assets/images/tab_offers.png",
                  onTap: () {
                    if (selectTab != 1) {
                      selectTab = 1;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 1,
                ),
          
                const SizedBox(width: 40, height: 40,),
          
                TabButton(
                  title: "Profile",
                  icon: "assets/images/tab_profile.png",
                  onTap: () {
                    if (selectTab != 3) {
                      selectTab = 3;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 3,
                ),
          
          
                TabButton(
                  title: "More",
                  icon: "assets/images/tab_more.png",
                  onTap: () {
                    if (selectTab != 4) {
                      selectTab = 4;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selectTab == 4,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
