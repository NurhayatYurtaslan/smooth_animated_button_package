 <h1>SmoothButton Package ✨🔘</h1>
  <p>The <span class="highlight">SmoothButton</span> package is a customizable button package for Flutter that provides a smooth and interactive user experience. It features a widget called <span class="highlight">SmoothButton</span> which can be easily integrated into your Flutter applications. The package offers a wide range of customization options, allowing you to tailor the button's appearance to your specific needs.</p>

  <p>With the <span class="highlight">SmoothButton</span> package, you can create buttons that not only look great but also provide a seamless user experience. The package allows you to customize various aspects of the button, such as the button colors, icon colors, shadow effects, border radius, animation duration, and more. This flexibility enables you to align the button's visual style with your app's overall design language, ensuring a consistent and polished look.</p>

  <p>In addition to the customizable appearance, the <span class="highlight">SmoothButton</span> package provides smooth and interactive animations. When the button is pressed or released, it gracefully transitions between the active and inactive states, providing visual feedback to the user and enhancing the interactive experience. You have control over the animation duration, allowing you to fine-tune the button's behavior to match your app's requirements.</p>

  <p>The package also supports popular icon libraries, such as the Material Icons provided by Flutter. This makes it easy to choose from a wide range of icons to represent the button's functionality. Whether it's a heart-shaped icon for a "Favorite" button or a play button icon for a multimedia control, you can easily select the appropriate icon to convey the intended action.</p>

  <p>By using the <span class="highlight">SmoothButton</span> package, you can create buttons with an optional text label, providing additional context or clarifying the button's purpose. You can customize the text label's style, including the font size, font weight, and color, to ensure it complements the button's overall appearance.</p>

  <p>Whether you're building a simple utility app or a complex user interface, the <span class="highlight">SmoothButton</span> package can be a valuable addition to your Flutter project. Its customization options, coupled with its smooth animation and user-friendly design, empower you to create intuitive and visually appealing buttons that engage and delight your users.</p>



## Versions

|Versions Name | Version |  
|--------------|---------|
| Flutter      | 3.13.0  |
| Dart         | 3.1.0   |

## Support

| Support Name | Version |  
|--------------|---------|
| Android      | SDK 16+ |
| iOS          | 11.0+   |
| Web          | Any*    | 

## Constructor
```
SmoothButton({
    super.key,
    this.isButtonPressed = false,
    this.activeIconColor = Colors.redAccent,
    this.pasifeIconColor = Colors.red,
    this.noShadowColor = Colors.grey,
    this.shadowColor = Colors.white,
    this.activeButtonColor = Colors.white,
    this.pasifeButtonColor = Colors.grey,
    this.borderRadius = 12,
    this.bottomOffset = const Offset(6, 6),
    this.topOffset = const Offset(-6, -6),
    this.blurRadius = 15,
    this.spreadRadius = 1,
    this.text = "",
    this.textStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    required this.duration,
    required this.icon,
    required this.iconSize,
    required this.buttonheight,
    required this.buttonwidth,
    // Added parameter for text
  });

```

## Example

```
import 'package:flutter/material.dart';
import 'package:smooth_animated_button_press/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothButton(
                  activeIconColor: Colors.red,
                  duration: const Duration(milliseconds: 300),
                  icon: Icons.favorite,
                  // Use MediaQuery or Int Value
                  buttonheight: MediaQuery.of(context).size.height * 0.2,
                  // Use MediaQuery or Int Value
                  buttonwidth: 300,
                  borderRadius: 20, iconSize: 60,
                  text: "Smooth Button",
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SmoothButton(
                  pasifeIconColor: Colors.green,
                  activeIconColor: Colors.black,
                  duration: const Duration(milliseconds: 500),
                  icon: Icons.add_alert,
                  // Use MediaQuery or Int Value
                  buttonheight: MediaQuery.of(context).size.height * 0.4,
                  // Use MediaQuery or Int Value
                  buttonwidth: 100,
                  borderRadius: 20, iconSize: 60,
                ),
              ]),
        ),
      ),
    );
  }
}

```
## Contributors 

- [Nurhayat Yurtaslan](https://github.com/NurhayatYurtaslan)
- [Abdulsamed Tanrıverdi](https://github.com/Allahverdyy)


## Supporting
- [Gürkan Fikret Günak](https://github.com/gurkanfikretgunak)
- [Melih Gündoğan](https://github.com/melihgundogan)
