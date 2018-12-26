import 'package:flutter/material.dart';

// How do I handle other gestures on widgets?
// Using the GestureDetector, you can listen to a wide range of Gestures such as:

// Tap

// onTapDown - A pointer that might cause a tap has contacted the screen at a particular location.
// onTapUp - A pointer that triggers a tap has stopped contacting the screen at a particular location.
// onTap - A tap has occurred.
// onTapCancel - The pointer that previously triggered the onTapDown won't cause a tap.
// Double tap

// onDoubleTap - The user tapped the screen at the same location twice in quick succession.
// Long press

// onLongPress - A pointer has remained in contact with the screen at the same location for a long period of time.
// Vertical drag

// onVerticalDragStart - A pointer has contacted the screen and might begin to move vertically.
// onVerticalDragUpdate - A pointer in contact with the screen has moved further in the vertical direction.
// onVerticalDragEnd - A pointer that was previously in contact with the screen and moving vertically is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen.
// Horizontal drag

// onHorizontalDragStart - A pointer has contacted the screen and might begin to move horizontally.
// onHorizontalDragUpdate - A pointer in contact with the screen has moved further in the horizontal direction.
// onHorizontalDragEnd - A pointer that was previously in contact with the screen and moving horizontally is no longer in contact with the screen and was moving at a specific velocity when it stopped contacting the screen.

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTapDown: (TapDownDetails details){

        },
        child: FlutterLogo(
          size: 200.0,
        ),
        onTap: () {
          print("tap");
        },
      ),
    ));
  }

}

AnimationController controller;
CurvedAnimation curve;

@override
void initState() {
//  controller = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
  curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
}

class SampleApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: GestureDetector(
            child: RotationTransition(
                turns: curve,
                child: FlutterLogo(
                  size: 200.0,
                )),
            onDoubleTap: () {
              if (controller.isCompleted) {
                controller.reverse();
              } else {
                controller.forward();
              }
            },
        ),
    ));
  }
}