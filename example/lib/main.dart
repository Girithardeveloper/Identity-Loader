import 'package:flutter/material.dart';
import 'package:identity_loader/identity_loader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: spinCircle()
      ),
    );
  }


  /// spinCircle
  Widget spinCircle() {
    return  IdentityLoader(
      indicatorColor: Colors.blue,
      indicatorStrokeWidth: 6.0,
      circleAvatarColor: Colors.white,
      circleAvatarRadius: 28,
      loaderImageWidget: Image.asset('asset/rider_images(2).png'),
      loaderType: LoaderType.spinCircle,
    );
  }

  /// spinFadeCircle
  Widget spinFadeCircle() {
    return  IdentityLoader(
      indicatorColor: Colors.blue,
      indicatorStrokeWidth: 6.0,
      circleAvatarColor: Colors.white,
      circleAvatarRadius: 28,
      loaderImageWidget: Image.asset('asset/rider_images(2).png'),
      loaderType: LoaderType.spinFadeCircle,
    );
  }

  /// circularIndicator
  Widget circularIndicator() {
    return  IdentityLoader(
      indicatorColor: Colors.blue,
      indicatorStrokeWidth: 6.0,
      circleAvatarColor: Colors.white,
      circleAvatarRadius: 28,
      loaderImageWidget: Image.asset('asset/rider_images(2).png'),
      loaderType: LoaderType.circularIndicator,
    );
  }

  /// dualWave
  Widget dualWave() {
    return  IdentityLoader(
      indicatorColor: Colors.blue,
      indicatorStrokeWidth: 6.0,
      circleAvatarColor: Colors.white,
      circleAvatarRadius: 28,
      loaderImageWidget: Image.asset('asset/rider_images(2).png'),
      loaderType: LoaderType.dualWave,
    );
  }

  /// circleBounce
  Widget circleBounce() {
    return  IdentityLoader(
      indicatorColor: Colors.blue,
      indicatorStrokeWidth: 6.0,
      circleAvatarColor: Colors.white,
      circleAvatarRadius: 28,
      loaderImageWidget: Image.asset('asset/rider_images(2).png'),
      loaderType: LoaderType.circleBounce,
    );
  }

}