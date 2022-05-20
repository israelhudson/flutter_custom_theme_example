import 'package:flutter/material.dart';
import 'package:flutter_custom_theme_example/tema_custom.dart';
import 'package:flutter_custom_theme_example/widgets/button/button_default/button_send.dart';

import 'custom_color_scheme.dart';

class HomePage extends StatelessWidget {
  final Function() toggleTheme;

  const HomePage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    // Get the `CustomColors` typed object in the `ThemeData` extension
    final customColors = Theme.of(context).extension<CustomColors>()!;
    final theme = Theme.of(context).extension<TemaCustom>()!;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Nada me faltara!',
                style: theme.textStyle,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: customColors.success,
                  primary: Colors.white,
                ),
                child: const Text('Success'),
                onPressed: () {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: customColors.info,
                  primary: Colors.white,
                ),
                child: const Text('Info'),
                onPressed: () {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: customColors.warning,
                  primary: Colors.white,
                ),
                child: const Text('Warning'),
                onPressed: () {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: customColors.danger,
                  primary: Colors.white,
                ),
                child: const Text('Danger'),
                onPressed: () {},
              ),
              ButtomDefault(
                child: Text('teste'),
                onPressed: () => toggleTheme(),
              ),
              // Center(
              //   child: Switch(
              //     value: Theme.of(context).,
              //     onChanged: (value) {
              //       setState(() {
              //         isSwitched = value;
              //         print(isSwitched);
              //       });
              //     },
              //     activeTrackColor: Colors.lightGreenAccent,
              //     activeColor: Colors.green,
              //   ))
            ],
          ),
        ),
      ),
    );
  }
}
