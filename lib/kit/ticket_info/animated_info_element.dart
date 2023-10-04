import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedInfoElement extends StatefulWidget {
  final void Function()? onEnd;

  final bool isExpanded;
  final bool isInfoVisibled;
  final double topPosition;
  final double expandedRightPosition;
  final Widget child;
  final double? expandedTopPosition;
  final double? rightPosition;

  const AnimatedInfoElement({
    required this.isExpanded,
    required this.isInfoVisibled,
    required this.topPosition,
    required this.expandedRightPosition,
    required this.child,
    this.expandedTopPosition,
    this.rightPosition,
    this.onEnd,
    super.key,
  });

  @override
  State<AnimatedInfoElement> createState() => _AnimatedInfoElementState();
}

class _AnimatedInfoElementState extends State<AnimatedInfoElement> {
  static const _animationDuration = 300;

  static final _rightPosition = 20.h;
  static final _expandedTopPosition = .78.sh;
  static final _leftPosition = .76.sw;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: widget.isExpanded
          ? widget.expandedTopPosition ?? _expandedTopPosition
          : widget.topPosition,
      right: widget.isExpanded
          ? widget.expandedRightPosition
          : widget.rightPosition ?? _rightPosition,
      left: widget.isExpanded ? 0 : _leftPosition,
      duration: const Duration(
        milliseconds: _animationDuration,
      ),
      onEnd: () => widget.onEnd!.call(),
      child: AnimatedOpacity(
        duration: const Duration(
          milliseconds: _animationDuration,
        ),
        opacity: widget.isInfoVisibled ? 1 : 0,
        child: widget.child,
      ),
    );
  }
}
