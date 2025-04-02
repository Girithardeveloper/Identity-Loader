

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



| SpinCircleFade | SpinCircle | CircleBounce |
|---------------|-----------|-------------|
| <img src="https://media-hosting.imagekit.io/61b6d57a578f445e/spinCircleFade.gif?Expires=1838193712&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=toYyhCC17lrUdVIpx~kyBQFMRcblaOVJuBqptXG4-J2EtcsoHN4Oy2FsHt1YzB~hBpAm1BYsdwdz2JSfehqTZQD52lDcpmopxmawL16qQyviHJUJrFi5AaS1ISo8EcUn3Cxo6NjFSRb~SilllIRcJRXEFy9MU4L9MPsNMy~wf6Xp5gN1XTfmrbilm7fDzKdNxVkJPewqbYKezxpOlficeD6PJ4DxQw8SEw9ZQwphHnZk4pm8akZW-9Kc0Pe6-p8ZYx0dKzlqs9uOY8lzFFnLcjNQEfWlSYakTRI5xcowx4HfIY6jfHAjBo7SIgrVQKopQufPGyz759RrYL1M1dJvJw__" width="200" alt="SpinCircleFade"/> | <img src="https://media-hosting.imagekit.io/6ca6bdcdfec64733/spinCircle.gif?Expires=1838194516&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=MaAIww-WMj1m~R9VoAbqT6cuEx92V57pdqaZsOjBy-ubLMa8NkwFmAsW8LEMbQSTh16dAoDtVnPHFPTcEDsSmGM2Po6YjSsJ12V5hjaQccphD2kPMKGPM4F12Ax2wiQmiScZ3WDjS~mcd72vjl9RCFcBwpUQOpOybwhCXqVd4K6b-3T2WODBClfQv4ICx3gn-5gB7HN-D3bF1kS5prBd6N8iRW7YZTsgewN87xYzMCW0ZkXNT3QMLgTm8UpZGKBbzcMk69BBxw2iHujHkjegyl--P1dm43PjCmrKdkOcuWWizO-HwQey06NhfoHWdA3l7VUYDzG07t3qmnnqJk3u1w__" width="200" alt="SpinCircle"/> | <img src="https://media-hosting.imagekit.io/c67a9acd363649c5/circleBounce.gif?Expires=1838194558&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=DDIPV5U1qYxkr0Bbi7uICNVa5g7g~3F79blOH3jEQxRqZeB7nKo91az~lcUr-D9X-GM6vjzdbW56KXFkh7demV~LDMrnLZgB-2crASp6I2kTh75noOk8ZwrY1mLRZsGDflN2kD7ifybisIns0chiuVhEiMpmBxKvCoho33OGdsYjWhF2UKXNm9ZbI4-je9ow-AB7Ve4yQe2rC4uOgTOBGapMV1GxLh8Evq2U2tGOrrcAXHlQWIpIBmcAuzTng-rwm1NVv-aq3xACSGouPwSpEVf1Obj-elx~aXkixzijfYIexm8yCwmluMsvvwpGRimbnHzkMwZJI~~rJ4DRYQQ0tA__" width="200" alt="CircleBounce"/> |


| DualWave | CircularIndicator |
|---------|------------------|
| <img src="https://media-hosting.imagekit.io/ad90c276e2b746aa/dualWave.gif?Expires=1838194553&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=gTnvPJ2mRN3AAMmFngdIYuw2ovrt1GJBeWYi86Us7IyeuCyJDcrZHAzkqjJ-8kXH1lzLsYFeHNOqVuZonPN--J~VX78WoFt3UQJBBxXI5h3Cfv3i26HWUXPYkGaZdh959z2XcteCwqX3wlP~ZdsHQ2FAPkGJS4obhxuUfGmiyH1GOwrkbvk38QD4qOHuP3tyv7LaNOZbUHXwYtc2VM-KnJQP8kTnUU2Q-~Zw5HT65PDWDI1gZTEIVvgPwEPj9sL~jebG-gLhXxZnSAvQMzTmC6SxGbD7sKOfgmltvkxrmDWb2hnDXptTPAFQKaGY4UsOu~G-Uj~iPBvkg9FjfAf9Lg__" width="200" alt="DualWave"/> | <img src="https://media-hosting.imagekit.io/0bdd09a747044bdd/circular.gif?Expires=1838194805&Key-Pair-Id=K2ZIVPTIP2VGHC&Signature=zRB14bhWWECXB1ZkEWDEOU8bVN3zx5kEfFs~49FDcLVeMpprc-0TBRReS1q~Kp8hUhGPMaPlYxN~jpGaigyC3z5aWpegE25rnxKqJ9mfkAZ4LAu1sH5WV0mcxgFWwGkbElnL5neEfWVmEv96sQ~2Cr-axGj8pcpoPyaS7TbKTIPEh~ICrvRjpAW2G9pef0z~x5UwPj9QlhK50f0QsPFt0KuqKkI~zDRgdffXCATgQxlGSquIwIIHkbpJF31rwLlhpP7cwlSZiycLlwrLzcdOq3LMKBn9jv9w6hNfUu~fDaTCGR0lwfW9ISpAmf4AbiW~7CQuBeEKFkp7TrLyP3k5EQ__" width="200" alt="CircularIndicator"/> |







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







