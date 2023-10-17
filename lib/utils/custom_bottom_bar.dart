import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/snippet.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgComponent1WhiteA700,
      activeIcon: ImageConstant.imgComponent1WhiteA700,
      type: BottomBarEnum.Component1whitea700,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgComponent1Gray60002,
      activeIcon: ImageConstant.imgComponent1Gray60002,
      type: BottomBarEnum.Component1gray60002,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCart,
      activeIcon: ImageConstant.imgCart,
      type: BottomBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgComponent1Gray6000224x24,
      activeIcon: ImageConstant.imgComponent1Gray6000224x24,
      type: BottomBarEnum.Component1gray6000224x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgComponent124x24,
      activeIcon: ImageConstant.imgComponent124x24,
      type: BottomBarEnum.Component124x24,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.v,
      margin: EdgeInsets.only(
        left: 26.h,
        right: 30.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.black900,
        borderRadius: BorderRadius.circular(
          40.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].icon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.gray60002,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].activeIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.whiteA700,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Component1whitea700,
  Component1gray60002,
  Cart,
  Component1gray6000224x24,
  Component124x24,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
