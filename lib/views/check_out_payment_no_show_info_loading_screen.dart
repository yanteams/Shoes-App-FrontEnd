import 'package:flutter_shop_app/utils/snippet.dart';
import 'package:flutter/material.dart';

class CheckOutPaymentNoShowInfoLoadingScreen extends StatelessWidget {
  const CheckOutPaymentNoShowInfoLoadingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 384.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    margin: EdgeInsets.only(
                      left: 164.h,
                      right: 164.h,
                      bottom: 535.v,
                    ),
                    padding: EdgeInsets.all(12.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 76.adaptSize,
                            width: 76.adaptSize,
                            child: CircularProgressIndicator(
                              value: 0.5,
                              strokeWidth: 4.h,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imageNike,
                          height: 15.v,
                          width: 45.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
