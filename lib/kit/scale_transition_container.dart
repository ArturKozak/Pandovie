import 'package:flutter/material.dart';

class _PageTransitionController {
  final Duration scaleAnimationDuration = const Duration(milliseconds: 250);
  AnimationController? scaleAnimationController;
  Animation<double>? scaleAnimation;

  initializeAnimationController({required TickerProvider vsync}) {
    scaleAnimationController = AnimationController(
      vsync: vsync,
      duration: scaleAnimationDuration,
    );

    scaleAnimation = Tween(begin: 1.0, end: 1.5).animate(
      CurvedAnimation(
          parent: scaleAnimationController!.view, curve: Curves.easeInExpo),
    );
  }

  animateScaleTransition(
      {required BuildContext context,
      required Widget routePage,
      required void Function(bool) onStateChanged}) {
    onStateChanged.call(true);
    scaleAnimationController!.forward().then(
      (value) {
        scaleAnimationController!.reverse();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => routePage,
          ),
        );

        onStateChanged.call(false);
      },
    );
  }
}

class PageTransitionButton extends StatefulWidget {
  const PageTransitionButton({
    Key? key,
    required this.vsync,
    required this.child,
    required this.nextPage,
    required this.onStateChanged,
  }) : super(key: key);

  /// Provide [TickerProvider] for animation purpose
  final TickerProvider vsync;

  /// Child property. Pass your button here.
  final Widget child;

  /// Pass the widget of the next screen where you want to navigate the user.
  final Widget nextPage;

  final void Function(bool) onStateChanged;

  @override
  State<PageTransitionButton> createState() => _PageTransitionButtonState();
}

class _PageTransitionButtonState extends State<PageTransitionButton> {
  final _PageTransitionController _homeScreenController =
      _PageTransitionController();

  @override
  void initState() {
    super.initState();
    _homeScreenController.initializeAnimationController(vsync: widget.vsync);
  }

  @override
  void dispose() {
    super.dispose();
    _homeScreenController.scaleAnimationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _homeScreenController.scaleAnimation!,
      child: GestureDetector(
        onTap: () => _homeScreenController.animateScaleTransition(
            context: context,
            routePage: widget.nextPage,
            onStateChanged: widget.onStateChanged),
        child: widget.child,
      ),
    );
  }
}

class PageTransitionReceiver extends StatelessWidget {
  const PageTransitionReceiver({Key? key, required this.scaffold})
      : super(key: key);

  /// Provide scaffold of the destination screen
  final Scaffold scaffold;

  @override
  Widget build(BuildContext context) {
    return scaffold;
  }
}
