import 'package:flutter_shop_app/models/userprofile_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ShopKidsPage extends StatefulWidget {
  const ShopKidsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ShopKidsPageState createState() => ShopKidsPageState();
}

class ShopKidsPageState extends State<ShopKidsPage>
    with AutomaticKeepAliveClientMixin<ShopKidsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 33.v),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 325.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 20.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return UserprofileItemWidget();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
