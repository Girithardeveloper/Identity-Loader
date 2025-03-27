import 'package:flutter/material.dart';

class IdentityLoader extends StatelessWidget {
  final double height;
  final double width;
  final Color indicatorColor;
  final double indicatorStrokeWidth;
  final Color circleAvatarColorOne;
  final Color circleAvatarColorTwo;
  final double circleAvatarRadiusOne;
  final double circleAvatarRadiusTwo;
  final  Widget loaderImageUrl;
  final double loaderImageHeight;
  final double loaderImageWidth;

  const IdentityLoader({
    super.key,
    this.height = 80,
    this.width = 120,
    this.indicatorColor = Colors.purple,
    this.indicatorStrokeWidth = 6.0,
    this.circleAvatarColorOne = Colors.white,
    this.circleAvatarColorTwo = Colors.purpleAccent,
    this.circleAvatarRadiusOne = 35,
    this.circleAvatarRadiusTwo = 28,
    this.loaderImageHeight = 40,
    this.loaderImageWidth =40,
    required this.loaderImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [

            /// Use SizedBox to control the overall size of the CircularProgressIndicator
            SizedBox(
              height: height, // Set the desired height
              width: width, // Set the desired width
              child: CircularProgressIndicator(
                color: indicatorColor,
                strokeWidth: indicatorStrokeWidth, // Adjust the thickness of the indicator
              ),
            ),

            /// Increase the size of the asset image
            CircleAvatar(
              radius: circleAvatarRadiusOne,
              backgroundColor: circleAvatarColorOne,
              child: CircleAvatar(
                  backgroundColor: circleAvatarColorTwo,
                  radius: circleAvatarRadiusTwo,
                  child: SizedBox(
                    height: loaderImageHeight,
                    width: loaderImageWidth,
                    child: loaderImageUrl,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
