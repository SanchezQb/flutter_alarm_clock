import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlassBox extends StatelessWidget {
  final double width, height;
  final Widget child;

  const FrostedGlassBox({
    Key key,
    @required this.width,
    @required this.height,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.circular(20.0);
    return ClipRRect(
      borderRadius: borderRadius,
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15.0, //7
                sigmaY: 15.0,
              ),
              child: SizedBox(
                width: width,
                height: height,
                child: const Text(" "),
              ),
            ),
            // Opacity(
            //   opacity: 0.05, //0.2
            //   child: Image.asset(
            //     "assets/noise.png",
            //     width: width,
            //     height: height,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1.0,
                ),
                borderRadius: borderRadius,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 30,
                    offset: const Offset(2, 2),
                  )
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.1)
                  ],
                  stops: const [0.0, 1.0],
                ),
              ),
              child: child,
            )
          ],
        ),
      ),
    );
  }
}
