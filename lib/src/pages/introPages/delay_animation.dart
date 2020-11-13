import 'dart:async';

import 'package:flutter/material.dart';

class DelayAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  final bool shouldFaded;

  DelayAnimation({
    @required this.child,
    this.delay,
    this.shouldFaded = false,
  });

  @override
  _DelayAnimationState createState() => _DelayAnimationState();
}

class _DelayAnimationState extends State<DelayAnimation>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _controller);

    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _controller.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay), () {
        _controller.forward().then((v) {
          if (widget.shouldFaded) {
            _controller.reset();
          }
        });
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
      opacity: _controller,
    );
  }
}
