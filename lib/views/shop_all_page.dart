import 'package:flutter_shop_app/models/productitem_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore_for_file: must_be_immutable
class ShopAllPage extends StatefulWidget {
  const ShopAllPage({Key? key})
      : super(
          key: key,
        );

  @override
  ShopAllPageState createState() => ShopAllPageState();
}

class ShopAllPageState extends State<ShopAllPage>
    with AutomaticKeepAliveClientMixin<ShopAllPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 33.v),
                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 4,
                  crossAxisSpacing: 20.h,
                  mainAxisSpacing: 20.h,
                  staggeredTileBuilder: (index) {
                    return StaggeredTile.fit(2);
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ProductitemItemWidget();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
