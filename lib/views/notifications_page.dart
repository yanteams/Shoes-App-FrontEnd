
import 'package:flutter/material.dart';
import 'package:flutter_shop_app/models/notificationtas_item_widget.dart';
import 'package:flutter_shop_app/utils/snippet.dart';

// ignore_for_file: must_be_immutable
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key})
      : super(
          key: key,
        );

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
              SizedBox(height: 44.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.fillWhiteA,
                child: Text(
                  "Notifications",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 26.h,
                    top: 25.v,
                    right: 26.h,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: 17.v,
                      );
                    },
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return NotificationtasItemWidget();
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.v),
                child: Divider(
                  indent: 26.h,
                  endIndent: 26.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
