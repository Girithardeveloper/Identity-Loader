

## Identity Loader: 
Identity Loader is a customizable Flutter package that provides a variety of loading animations along with an identity image or avatar in the center. It helps improve the user experience by offering visually appealing loading indicators.

## Features

Multiple loader animations:
Spin Circle
Spin Fade Circle
Circular Progress Indicator
Dual Wave
Circle Bounce
Customizable colors, sizes, and stroke widths.
Supports an image or widget at the center of the loader.


## Installation

Add the following to your pubspec.yaml file:

```dart
dependencies:
identity_loader: latest_version
```


Then, run:

```dart
flutter pub get
```


## Usage

Import the package:
```dart
import 'package:identity_loader/identity_loader.dart';
```

Use IdentityLoader in your widget tree:

```dart
IdentityLoader(
indicatorColor: Colors.blue,
indicatorStrokeWidth: 6.0,
circleAvatarColor: Colors.white,
circleAvatarRadius: 28,
loaderImageWidget: Image.asset('assets/logo.png'),
loaderType: LoaderType.spinCircle,
)
```

## Parameters

|Parameter   | Type   | Default  |Description   |
|---|--------|----------|---|
| indicatorColor  | Color? | null     | Color of the loading indicator  |
|  indicatorStrokeWidth | double | 6.0      | Stroke width of the indicator  |
| circleAvatarColor  | Color? | null     |Background color of the center avatar   |
|circleAvatarRadius   | double | 28       | Radius of the center avatar  |
| loaderImageWidget  |  Widget | required |Widget displayed at the center of the loader   |
|  loaderImageHeight | double | 40       | Height of the loader image  |
| loaderImageWidth  |    double | 40       | Width of the loader imag  |
| loaderType  |   LoaderType |  circularIndicator  | Type of loading animation  |





## Available Loader Types
* LoaderType.spinCircle
* LoaderType.spinFadeCircle
* LoaderType.circularIndicator
* LoaderType.dualWave
* LoaderType.circleBounce

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contributions
Contributions, issues, and feature requests are welcome! Feel free to open an issue or a pull request.

## Author
[Girithar](https://github.com/Girithardeveloper/Identity-Loader)
[Johnson](https://github.com/Girithardeveloper/Identity-Loader)



[//]: # (## Additional information)

[//]: # ()
[//]: # (TODO: Tell users more about the package: where to find more information, how to)

[//]: # (contribute to the package, how to file issues, what response they can expect)

[//]: # (from the package authors, and more.)





