import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/custom_text_style.dart';

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
      icon: ImageConstant.imgNavhome,
      activeIcon: ImageConstant.imgNavhome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavfavourites,
      activeIcon: ImageConstant.imgNavfavourites,
      title: "Favourites",
      type: BottomBarEnum.Favourites,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavsearch,
      activeIcon: ImageConstant.imgNavsearch,
      title: "Search",
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavnotifications,
      activeIcon: ImageConstant.imgNavnotifications,
      title: "Notifications",
      type: BottomBarEnum.Notifications,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavprofile,
      activeIcon: ImageConstant.imgNavprofile,
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
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
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  color: appTheme.gray60003,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 11.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: appTheme.blueGray40002,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.gradientOnErrorContainerToWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.black900,
                    margin: EdgeInsets.only(top: 21.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 11.v,
                      bottom: 18.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  ),
                ],
              ),
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
  Home,
  Favourites,
  Search,
  Bag,

  Notifications,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

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
