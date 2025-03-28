import 'package:flutter/material.dart';
import 'package:identyloader/spin_circle.dart';

class IdentityLoader extends StatelessWidget {
  final double height;
  final double width;
  final Color? indicatorColor;
  final bool isSpinCircle;
  final double indicatorStrokeWidth;
  final Color? circleAvatarColorOne;
  final Color? circleAvatarColorTwo;
  final double circleAvatarRadiusOne;
  final double circleAvatarRadiusTwo;
  final Widget loaderImageUrl;
  final double loaderImageHeight;
  final double loaderImageWidth;

  const IdentityLoader({
    super.key,
    this.height = 80,
    this.width = 80,
    this.indicatorColor,
    this.indicatorStrokeWidth = 6.0,
    this.circleAvatarColorOne,
    this.circleAvatarColorTwo,
    this.circleAvatarRadiusOne = 35,
    this.circleAvatarRadiusTwo = 28,
    this.loaderImageHeight = 40,
    this.loaderImageWidth =40,
    required this.loaderImageUrl,
    this.isSpinCircle = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Color defaultPrimary = theme.primaryColor;

    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            /// Circular Progress Indicator / SpinCircle at the edge
            SizedBox(
              height: isSpinCircle ? (circleAvatarRadiusTwo + indicatorStrokeWidth) * 4 :
              (circleAvatarRadiusTwo + indicatorStrokeWidth) * 2,
              width: isSpinCircle ? (circleAvatarRadiusTwo + indicatorStrokeWidth) * 4 :
              (circleAvatarRadiusTwo + indicatorStrokeWidth) * 2,
              child: isSpinCircle
                  ? SpinCircle(
                color: defaultPrimary,
                size: (circleAvatarRadiusTwo + indicatorStrokeWidth) * 3.5,
              )
                  : CircularProgressIndicator(
                color: defaultPrimary,
                strokeWidth: indicatorStrokeWidth,
              ),
            ),

            /// Circle Avatar in the center
            CircleAvatar(
              backgroundColor: defaultPrimary,
              radius: circleAvatarRadiusTwo,
              child: SizedBox(
                height: loaderImageHeight,
                width: loaderImageWidth,
                child: loaderImageUrl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
