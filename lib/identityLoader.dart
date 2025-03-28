import 'package:flutter/material.dart';
import 'package:identyloader/spin_circle.dart';
import 'package:identyloader/spin_dual_ring.dart';
import 'package:identyloader/spin_fade_circle.dart';
import 'circle_bounce.dart';

enum LoaderType {
  spinCircle,
  spinFadeCircle,
  circularIndicator,
  dualWave,
  circleBounce,
}


class IdentityLoader extends StatelessWidget {
  final double height;
  final double width;
  final Color? indicatorColor;
  final double indicatorStrokeWidth;
  final Color? circleAvatarColor;
  final double circleImageRadius;
  final Widget loaderImageWidget;
  final double loaderImageHeight;
  final double loaderImageWidth;
  final LoaderType loaderType;

  const IdentityLoader({
    super.key,
    this.height = 80,
    this.width = 80,
    this.indicatorColor,
    this.indicatorStrokeWidth = 6.0,
    this.circleAvatarColor,
    this.circleImageRadius = 28,
    this.loaderImageHeight = 40,
    this.loaderImageWidth =40,
    required this.loaderImageWidget,
    this.loaderType = LoaderType.circularIndicator,

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
              height: (loaderType == LoaderType.spinCircle || loaderType == LoaderType.spinFadeCircle)
                  ? (circleImageRadius + indicatorStrokeWidth) * 4
                  : (circleImageRadius + indicatorStrokeWidth) * 2,
              width: (loaderType == LoaderType.spinCircle || loaderType == LoaderType.spinFadeCircle)
                  ? (circleImageRadius + indicatorStrokeWidth) * 4
                  : (circleImageRadius + indicatorStrokeWidth) * 2,
              child: Builder(
                builder: (context) {
                  switch (loaderType) {
                    case LoaderType.spinCircle:
                      return SpinCircle(
                        color: defaultPrimary,
                        size: (circleImageRadius + indicatorStrokeWidth) * 3.5,
                      );
                    case LoaderType.spinFadeCircle:
                      return SpinFadeCircle(
                        color: defaultPrimary,
                        size: (circleImageRadius + indicatorStrokeWidth) * 3.5,
                      );
                    case LoaderType.circularIndicator:
                      return CircularProgressIndicator(
                        color: defaultPrimary,
                        strokeWidth: indicatorStrokeWidth,

                      );
                    case LoaderType.dualWave:
                      return SpinDualRing(
                        color: defaultPrimary,
                        size: (circleImageRadius + indicatorStrokeWidth) * 3.5,
                      );
                    case LoaderType.circleBounce:
                      return CircleBounce(
                        color: defaultPrimary,
                        size: (circleImageRadius + indicatorStrokeWidth) * 3.8,
                      );
                  }
                },
              ),
            ),



            /// Circle Avatar in the center
            CircleAvatar(
              backgroundColor: defaultPrimary,
              radius: circleImageRadius,
              child: SizedBox(
                height: loaderImageHeight,
                width: loaderImageWidth,
                child: loaderImageWidget,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
