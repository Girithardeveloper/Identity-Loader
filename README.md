

## Identity Loader: 
Identity Loader is a customizable Flutter package that provides a variety of loading animations along with an identity image or avatar in the center. It helps improve the user experience by offering visually appealing loading indicators.

## Features

* Multiple loader animations:
* Spin Circle
* Spin Fade Circle
* Circular Progress Indicator
* Dual Wave
* Circle Bounce
* Customizable colors, sizes, and stroke widths.
* Supports an image or widget at the center of the loader.


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

|Parameter   | Type   | Default                        |Description   |
|---|--------|--------------------------------|---|
| indicatorColor  | Color? | Theme.of(context).primarycolor | Color of the loading indicator  |
|  indicatorStrokeWidth | double | 6.0                            | Stroke width of the indicator  |
| circleAvatarColor  | Color? | Theme.of(context).primarycolor                           |Background color of the center avatar   |
|circleAvatarRadius   | double | 28                             | Radius of the center avatar  |
| loaderImageWidget  |  Widget | required                       |Widget displayed at the center of the loader   |
|  loaderImageHeight | double | 40                             | Height of the loader image  |
| loaderImageWidth  |    double | 40                             | Width of the loader imag  |
| loaderType  |   LoaderType | circularIndicator              | Type of loading animation  |

## Example

<a href="">
    <img src="https://user-images.githubusercontent.com/14011726/94132137-7d4fc100-fe7c-11ea-8512-69f90cb65e48.gif" alt="GIRITHAR" width="100" height="100">
</a>



[//]: # ([https://user-images.githubusercontent.com/14011726/94132137-7d4fc100-fe7c-11ea-8512-69f90cb65e48.gif]&#40;https://youtube.com/shorts/ZSozPgIKRUQ?si=kwwMBFpSYrSslwHG&#41;)






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

## Authors

<a href="https://github.com/Girithardeveloper/Identity-Loader">
    <img src="https://i.imghippo.com/files/mhE6205AIs.jpg" alt="GIRITHAR" width="100" height="100">
</a>

<a href="https://github.com/Girithardeveloper/Identity-Loader">
    <img src="https://avatars.githubusercontent.com/u/116719711?v=4" alt="JOHNSON" width="100" height="100">
</a>







