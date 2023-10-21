
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/models/productitem1_item_widget.dart';
import 'package:flutter_shop_app/utils/size_utils.dart';

class FavouriteseditItemWidget extends StatelessWidget {
  const FavouriteseditItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 305.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 20.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return Productitem1ItemWidget();
        },
      ),
    );
  }
}
