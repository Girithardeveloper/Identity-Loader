

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
<img height="100" src="https://imagekit.io/tools/asset-public-link?detail=%7B%22name%22%3A%22IMG_20250224_151501.jpg%22%2C%22type%22%3A%22image%2Fjpeg%22%2C%22signedurl_expire%22%3A%222028-04-01T06%3A29%3A07.584Z%22%2C%22signedUrl%22%3A%22https%3A%2F%2Fmedia-hosting.imagekit.io%2F05d7471e6f634771%2FIMG_20250224_151501.jpg%3FExpires%3D1838183348%26Key-Pair-Id%3DK2ZIVPTIP2VGHC%26Signature%3DCc~8m9Xf5UC46X9UgPNaIEJG4dLPTxddAgdZbHor7TlSrkW~G3WbCPPQd2uwvwvAU-KHzeJDXj9oyBqv5xg9Z~7ueMePAPMjsHsXLs0ajk5yzfqVP94iLhcSPD-KmhVMpmjsdfuNGRGp0TC03nbVz4T2I2BiCGpozykkxweplt3-6yGHGycdgJAGwMIqRgg03RMFqSLFGd3i50YJOE~PMzPg5uG8zz5v7lr-aANytFbGpDWc6ZdhGn9b4Npx92XedT2Vqk71TMCh69jW0GpsfhGQGss~1VaxUeLepNHvhuB7B-qsdnV3OxERR2UnNcr0M-ay0JGXNx8eyGq6fcPUMQ__%22%7D" title="GIRITHAR" width="100"/>

[//]: # ([Girithar]&#40;https://github.com/Girithardeveloper/Identity-Loader&#41;)

[//]: # ([Johnson]&#40;https://github.com/Girithardeveloper/Identity-Loader&#41;)







