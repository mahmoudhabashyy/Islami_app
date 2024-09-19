import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/icons/radio.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios,
                  size: 30,
                    color: theme.primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow,
                  size: 50,
                    color: theme.primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios,
                  size: 30,
                    color: theme.primaryColor,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
