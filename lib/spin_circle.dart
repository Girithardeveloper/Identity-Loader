import 'dart:math' as math;
import 'package:flutter/cupertino.dart';

class SpinCircle extends StatefulWidget {
  const SpinCircle({
    super.key,
    this.color,
    this.size = 50.0,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 1200),
    this.controller,
  })  : assert(
  !(itemBuilder is IndexedWidgetBuilder && color is Color) && !(itemBuilder == null && color == null),
  'You should specify either a itemBuilder or a color',
  );

  final Color? color;
  final double size;
  final IndexedWidgetBuilder? itemBuilder;
  final Duration duration;
  final AnimationController? controller;

  @override
  State<SpinCircle> createState() => _SpinCircleState();
}

class _SpinCircleState extends State<SpinCircle> with SingleTickerProviderStateMixin {
  static const _itemCount = 12;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ?? AnimationController(vsync: this, duration: widget.duration))..repeat();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size.square(widget.size),
        child: Stack(
          children: List.generate(_itemCount, (index) {
            final position = widget.size * .5;
            return Positioned.fill(
              left: position,
              top: position,
              child: Transform(
                transform: Matrix4.rotationZ(30.0 * index * 0.0174533),
                child: Align(
                  alignment: Alignment.center,
                  child: ScaleTransition(
                    scale: DelayTween(
                      begin: 0.0,
                      end: 1.0,
                      delay: index / _itemCount,
                    ).animate(_controller),
                    child: SizedBox.fromSize(
                      size: Size.square(widget.size * 0.10),
                      child: _itemBuilder(index),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) => widget.itemBuilder != null
      ? widget.itemBuilder!(context, index)
      : DecoratedBox(
    decoration: BoxDecoration(
      color: widget.color,
      shape: BoxShape.circle,
    ),
  );
}

class DelayTween extends Tween<double> {
  DelayTween({
    double? begin,
    double? end,
    required this.delay,
  }) : super(begin: begin, end: end);

  final double delay;

  @override
  double lerp(double t) {
    return super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);
  }

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}