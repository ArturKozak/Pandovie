import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class ParallaxImage extends StatelessWidget {
  const ParallaxImage({
    Key? key,
    required this.image,
    this.extent,
    this.controller,
    this.color,
    this.child,
  }) : super(key: key);

  final ImageProvider image;

  final ScrollController? controller;

  final double? extent;

  final Color? color;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final scrollPosition = (controller != null)
        ? controller?.position
        : Scrollable.of(context).position;
    final constraints = (scrollPosition?.axis == Axis.vertical)
        ? BoxConstraints(minHeight: extent!)
        : BoxConstraints(minWidth: extent!);
    return RepaintBoundary(
      child: ConstrainedBox(
        constraints: constraints,
        child: _Parallax(
          color: color,
          image: image,
          scrollPosition: scrollPosition,
          screenSize: media.size,
          child: child,
        ),
      ),
    );
  }

  @override
  void debugFillProperties(
    DiagnosticPropertiesBuilder properties,
  ) {
    super.debugFillProperties(properties);

    properties.add(DoubleProperty('extent', extent));
    properties.add(DiagnosticsProperty<ImageProvider>('image', image));
    properties.add(DiagnosticsProperty<Color>('color', color));
  }
}

class _Parallax extends SingleChildRenderObjectWidget {
  const _Parallax({
    Key? key,
    required this.color,
    this.image,
    this.scrollPosition,
    this.screenSize,
    Widget? child,
  }) : super(key: key, child: child);
  final ImageProvider? image;
  final ScrollPosition? scrollPosition;
  final Size? screenSize;
  final Color? color;

  @override
  _RenderParallax createRenderObject(BuildContext context) {
    return _RenderParallax(
      scrollPosition: scrollPosition!,
      image: image!,
      screenSize: screenSize!,
      color: color,
    );
  }

  @override
  void updateRenderObject(BuildContext context, _RenderParallax renderObject) {
    renderObject
      ..image = image!
      ..scrollPosition = scrollPosition!
      ..screenSize = screenSize!
      ..color = color!;
  }
}

class _RenderParallax extends RenderProxyBox {
  _RenderParallax({
    required ScrollPosition scrollPosition,
    required ImageProvider image,
    required Size screenSize,
    Color? color,
    ImageConfiguration configuration = ImageConfiguration.empty,
    RenderBox? child,
  })  : _image = image,
        _scrollPosition = scrollPosition,
        _screenSize = screenSize,
        _color = color,
        _configuration = configuration,
        super(child);

  final ImageConfiguration? _configuration;
  ImageProvider? _image;
  ScrollPosition? _scrollPosition;
  Size? _screenSize;
  Color? _color;
  Offset? _position;
  BoxPainter? _painter;

  set image(ImageProvider value) {
    if (value == _image) return;
    _image = value;
    _painter?.dispose();
    _painter = null;
    _decoration = null;
    markNeedsPaint();
  }

  set scrollPosition(ScrollPosition value) {
    if (value == _scrollPosition) return;

    if (attached) _scrollPosition?.removeListener(markNeedsPaint);

    _scrollPosition = value;

    if (attached) _scrollPosition?.addListener(markNeedsPaint);

    markNeedsPaint();
  }

  set screenSize(Size value) {
    if (value == _screenSize) return;
    _screenSize = value;
    markNeedsPaint();
  }

  set color(Color value) {
    if (value == _color) return;
    _color = value;
    _painter?.dispose();
    _painter = null;
    _decoration = null;
    markNeedsPaint();
  }

  ImageConfiguration? get configuration => _configuration;

  Decoration? get decoration {
    if (_decoration != null) return _decoration;

    Alignment alignment;
    if (_scrollPosition?.axis == Axis.vertical) {
      double value =
          (_position!.dy / _screenSize!.height - 0.5).clamp(-1.0, 1.0);
      alignment = Alignment(0.0, value);
    } else {
      double value =
          (_position!.dx / _screenSize!.width - 0.5).clamp(-1.0, 1.0);
      alignment = Alignment(value, 0.0);
    }

    _decoration = BoxDecoration(
      color: _color,
      image: DecorationImage(
        alignment: alignment,
        image: _image!,
        fit: fit,
      ),
    );
    return _decoration;
  }

  Decoration? _decoration;

  BoxFit get fit {
    return (_scrollPosition!.axis == Axis.vertical)
        ? BoxFit.fitWidth
        : BoxFit.fitHeight;
  }

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    _scrollPosition!.addListener(markNeedsPaint);
  }

  @override
  void detach() {
    _painter?.dispose();
    _painter = null;
    _scrollPosition!.removeListener(markNeedsPaint);
    super.detach();
    markNeedsPaint();
  }

  @override
  @protected
  bool hitTestSelf(Offset position) => true;

  @override
  void paint(PaintingContext context, Offset offset) {
    var pos = localToGlobal(Offset(size.width / 2, size.height / 2));

    if (_position != pos) {
      _painter?.dispose();
      _painter = null;
      _decoration = null;
      _position = pos;
    }

    _painter ??= decoration!.createBoxPainter(markNeedsPaint);

    final ImageConfiguration filledConfiguration =
        configuration!.copyWith(size: size);

    int? debugSaveCount;

    assert(() {
      debugSaveCount = context.canvas.getSaveCount();
      return true;
    }());
    _painter!.paint(context.canvas, offset, filledConfiguration);
    assert(() {
      if (debugSaveCount != context.canvas.getSaveCount()) {
        throw FlutterError(
            '${decoration.runtimeType} painter had mismatching save and restore calls.\n'
            'Before painting the decoration, the canvas save count was $debugSaveCount. '
            'After painting it, the canvas save count was ${context.canvas.getSaveCount()}. '
            'Every call to save() or saveLayer() must be matched by a call to restore().\n'
            'The decoration was:\n'
            '  $decoration\n'
            'The painter was:\n'
            '  $_painter');
      }
      return true;
    }());
    if (decoration!.isComplex) context.setIsComplexHint();
    super.paint(context, offset);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder description) {
    super.debugFillProperties(description);

    description.add(
        DiagnosticsProperty<ScrollPosition>('scrollPosition', _scrollPosition));
    description.add(DiagnosticsProperty<Size>('screenSize', _screenSize));
    //description.add(_decoration!.toDiagnosticsNode(name: 'decoration')); // null safety / harfang
    description.add(DiagnosticsProperty<ImageConfiguration>(
        'configuration', configuration));
  }
}
