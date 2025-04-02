import 'package:flutter/material.dart';
import 'package:identity_loader/spin_circle.dart';
import 'package:identity_loader/spin_dual.dart';
import 'package:identity_loader/spin_fade_circle.dart';

import 'circle_bounce.dart';

/// Enum for different types of loaders
enum LoaderType {

  spinCircle,
  spinFadeCircle,
  circularIndicator,
  dualWave,
  circleBounce,
}

/// Identity Loader - A customizable loading widget with an avatar in the center
class IdentityLoader extends StatelessWidget {
  /// Color of the loading indicator
  final Color? indicatorColor;

  /// Stroke width of the loading indicator (for CircularProgressIndicator)
  final double indicatorStrokeWidth;

  /// Background color of the central CircleAvatar
  final Color? circleAvatarColor;

  /// Radius of the CircleAvatar in the center
  final double circleAvatarRadius;

  /// Widget to be displayed inside the CircleAvatar (e.g., an image or an icon)
  final Widget loaderImageWidget;

  /// Height of the image/icon inside the CircleAvatar
  final double loaderImageHeight;

  /// Width of the image/icon inside the CircleAvatar
  final double loaderImageWidth;

  /// Type of the loader animation
  final LoaderType loaderType;

  /// Constructor for IdentityLoader
  const IdentityLoader({
    super.key,
    this.indicatorColor,
    this.indicatorStrokeWidth = 6.0,
    this.circleAvatarColor,
    this.circleAvatarRadius = 28,
    this.loaderImageHeight = 40,
    this.loaderImageWidth = 40,
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
            /// Loader animation based on the selected loader type
            SizedBox(
              height: (loaderType == LoaderType.spinCircle || loaderType == LoaderType.spinFadeCircle)
                  ? (circleAvatarRadius + indicatorStrokeWidth) * 4
                  : (circleAvatarRadius + indicatorStrokeWidth) * 2,
              width: (loaderType == LoaderType.spinCircle || loaderType == LoaderType.spinFadeCircle)
                  ? (circleAvatarRadius + indicatorStrokeWidth) * 4
                  : (circleAvatarRadius + indicatorStrokeWidth) * 2,
              child: Builder(
                builder: (context) {
                  switch (loaderType) {
                    case LoaderType.spinCircle:
                      return SpinCircle(
                        color: defaultPrimary,
                        size: (circleAvatarRadius + indicatorStrokeWidth) * 3.5,
                      );
                    case LoaderType.spinFadeCircle:
                      return SpinFadeCircle(
                        color: defaultPrimary,
                        size: (circleAvatarRadius + indicatorStrokeWidth) * 3.5,
                      );
                    case LoaderType.circularIndicator:
                      return CircularProgressIndicator(
                        color: defaultPrimary,
                        strokeWidth: indicatorStrokeWidth,
                      );
                    case LoaderType.dualWave:
                      return SpinDualRing(
                        color: defaultPrimary,
                        size: (circleAvatarRadius + indicatorStrokeWidth) * 3.5,
                      );
                    case LoaderType.circleBounce:
                      return CircleBounce(
                        color: defaultPrimary,
                        size: (circleAvatarRadius + indicatorStrokeWidth) * 3.8,
                      );
                  }
                },
              ),
            ),

            /// Central CircleAvatar containing the image/icon
            CircleAvatar(
              backgroundColor: defaultPrimary,
              radius: circleAvatarRadius,
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
