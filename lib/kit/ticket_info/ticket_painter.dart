import 'package:flutter/material.dart';

class TicketPainter extends CustomPainter {
  final Color borderColor;
  final Color bgColor;

  static const _cornerGap = 30.0;
  static const _cutoutRadius = 18.0;
  static const _cutoutDiameter = _cutoutRadius * 2;

  TicketPainter({
    required this.bgColor,
    required this.borderColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final maxWidth = size.width;
    final maxHeight = size.height;

    final cutoutStartPos = maxHeight - maxHeight * 0.19;

    final leftCutoutStartY = cutoutStartPos;

    final rightCutoutStartY = cutoutStartPos - _cutoutDiameter;

    final dottedLineY = cutoutStartPos - _cutoutRadius + 7;

    double dottedLineStartX = _cutoutRadius;

    final dottedLineEndX = maxWidth - _cutoutRadius - 5;

    const dashWidth = 8.5;

    const dashSpace = 4;

    final paintBg = Paint()
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..color = bgColor;

    final paintBorder = Paint()
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = borderColor;

    final paintDottedLine = Paint()
      ..color = borderColor.withOpacity(0.5)
      ..strokeWidth = 5;

    final path = Path();

    path.moveTo(_cornerGap, 0);
    path.lineTo(maxWidth - _cornerGap, 0);
    _drawCornerArc(path, maxWidth, _cornerGap);
    path.lineTo(maxWidth, rightCutoutStartY);
    _drawCutout(path, maxWidth, rightCutoutStartY + _cutoutDiameter);
    path.lineTo(maxWidth, maxHeight - _cornerGap * 2);
    _drawCornerArc(path, maxWidth - _cornerGap, maxHeight - _cornerGap);
    path.lineTo(_cornerGap, maxHeight - _cornerGap);
    _drawCornerArc(path, 0, maxHeight - _cornerGap * 2);
    path.lineTo(0, leftCutoutStartY);
    _drawCutout(
      path,
      0.0,
      leftCutoutStartY - _cutoutDiameter,
    );
    path.lineTo(0, _cornerGap);
    _drawCornerArc(path, _cornerGap, 0);

    canvas.drawPath(path, paintBg);
    canvas.drawPath(path, paintBorder);

    while (dottedLineStartX < dottedLineEndX) {
      canvas.drawLine(
        Offset(dottedLineStartX, dottedLineY),
        Offset(dottedLineStartX + dashWidth, dottedLineY),
        paintDottedLine,
      );
      dottedLineStartX += dashWidth + dashSpace;
    }
  }

  _drawCutout(Path path, double startX, double endY) {
    path.arcToPoint(
      Offset(startX, endY),
      radius: const Radius.circular(_cutoutRadius),
      clockwise: false,
    );
  }

  _drawCornerArc(Path path, double endPointX, double endPointY) {
    path.arcToPoint(
      Offset(endPointX, endPointY),
      radius: const Radius.circular(_cornerGap),
    );
  }

  @override
  bool shouldRepaint(TicketPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(TicketPainter oldDelegate) => false;
}

class TicketClipper extends CustomClipper<Path> {
  static const _cornerGap = 25.0;
  static const _cutoutRadius = 18.0;

  @override
  Path getClip(Size size) {
    final maxWidth = size.width;
    final maxHeight = size.height;

    final path = Path();

    path.moveTo(_cornerGap, 0);
    path.lineTo(maxWidth - _cornerGap, 0);
    _drawCornerArc(path, maxWidth, _cornerGap);
    path.lineTo(maxWidth, maxHeight - _cornerGap);
    _drawCornerArc(path, maxWidth - _cutoutRadius, maxHeight, clock: false);
    path.lineTo(_cutoutRadius, maxHeight);
    _drawCornerArc(path, 0, maxHeight - _cornerGap, clock: false);
    path.lineTo(0, _cornerGap);
    _drawCornerArc(path, _cornerGap, 0);

    return path;
  }

  _drawCornerArc(Path path, double endPointX, double endPointY, {bool? clock}) {
    path.arcToPoint(
      Offset(endPointX, endPointY),
      clockwise: clock ?? true,
      radius: const Radius.circular(_cornerGap),
    );
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
