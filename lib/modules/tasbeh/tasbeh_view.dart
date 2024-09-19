import 'package:flutter/material.dart';
class TasbehView extends StatefulWidget {
  const TasbehView({super.key});
  @override
  State<TasbehView> createState() => _TasbehViewState();
}
class _TasbehViewState extends State<TasbehView> {
  int currentIndex = 0;
  int numberOfClicks = 0;
  var angle = 0.0;
  var texts = [
    "سبحان الله  ",
    " الحمد لله ",
    "  الله أكبر ",
  ];
  @override
  Widget build(BuildContext context) {
    // var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  margin: const EdgeInsets.only(
                    top: 80,
                  ),
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset(
                      "assets/images/body of seb7a.png",
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 80,
                    right: 43,
                  ),
                  child: SizedBox(
                    height: 170,
                    child: Image.asset(
                      "assets/images/head of seb7a.png",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "عدد التسبيحات",
              style: TextStyle(
                fontFamily: "El Messiri",
                fontSize: 25,
              ),
            ),
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFFB7935F).withOpacity(0.5),
              ),
              child: Text("$numberOfClicks"),
            ),
            const SizedBox(
              height: 15,
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFFB7935F),
              ),
              onPressed: () {
                onClick();
              },
              child: Text(
                (texts[currentIndex]),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  onClick() {
    numberOfClicks++;
    angle += 7;
    if (numberOfClicks == 33) {
      numberOfClicks = 0;
      currentIndex++;
      currentIndex = currentIndex % 3;
    }
    setState(() {});
  }
}
