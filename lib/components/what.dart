import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
class Rectangle1 extends StatelessWidget {
  Rectangle1();
  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: Rectangle1Painter());
  }
}
class Rectangle1Painter extends CustomPainter {
  Rectangle1Painter();
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-45.0000000000, -188.0000000000);
// 2:2 : Rectangle 1 (COMPONENT)
    var draw_2_2 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          45.0000000000,
          188.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:45,t:188,r:-45,b:-45,w:284,h:218) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));
// 1:3 : Rectangle 1 (RECTANGLE)
      var draw_1_3 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(0.0, 0.0, 284.0000000000,
            218.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:284,h:218) */;
        canvas.save();
        canvas.scale((container.width) / 284.0000000000,
            (container.height) / 218.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 284.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 218.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          (Path()..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
        ];
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        });
        canvas.restore();
      };
      draw_1_3(canvas, frame);
      canvas.restore();
    };
    draw_2_2(canvas, frame);
  }
  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }
  @override
  bool shouldRebuildSemantics(Rectangle1Painter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }
  @override
  bool shouldRepaint(Rectangle1Painter oldDelegate) {
    return false;
  }
}
class Rectangle2 extends StatelessWidget {
  Rectangle2();
  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: Rectangle2Painter());
  }
}
class Rectangle2Painter extends CustomPainter {
  Rectangle2Painter();
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-45.0000000000, -450.0000000000);
// 3:0 : Rectangle 2 (COMPONENT)
    var draw_3_0 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          45.0000000000,
          450.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:45,t:450,r:-45,b:-45,w:284,h:218) */;
      canvas.save();
      canvas.transform(Float64List.fromList([
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0000000000,
        0.0,
        0.0,
        0.0,
        0.0,
        1.0,
        0.0,
        frame.left,
        frame.top,
        0.0,
        1.0
      ]));
      canvas.drawRect(Offset.zero & frame.size,
          (Paint()..color = _ColorCatalog.instance.color_0));
// 1:4 : Rectangle 2 (RECTANGLE)
      var draw_1_4 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(0.0, 0.0, 284.0000000000,
            218.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:0,b:0,w:284,h:218) */;
        canvas.save();
        canvas.scale((container.width) / 284.0000000000,
            (container.height) / 218.0000000000);
        canvas.transform(Float64List.fromList([
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0000000000,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          frame.left,
          frame.top,
          0.0,
          1.0
        ]));
        var transform = Float64List.fromList([
          (frame.width / 284.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 218.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          1.0,
          0.0,
          0.0,
          0.0,
          0.0,
          1.0
        ]);
        var fillGeometry = [
          (Path()..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
        ];
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_1);
        });
        canvas.restore();
      };
      draw_1_4(canvas, frame);
      canvas.restore();
    };
    draw_3_0(canvas, frame);
  }
  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }
  @override
  bool shouldRebuildSemantics(Rectangle2Painter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }
  @override
  bool shouldRepaint(Rectangle2Painter oldDelegate) {
    return false;
  }
}
class _PathCatalog {
  _PathCatalog() {}
  static final _PathCatalog instance = _PathCatalog();
}
class _PaintCatalog {
  _PaintCatalog() {
    this.paint_0 = (Paint()..color = _ColorCatalog.instance.color_1);
    this.paint_1 = (Paint()..color = _ColorCatalog.instance.color_2);
  }
  Paint paint_0;
  Paint paint_1;
  static final _PaintCatalog instance = _PaintCatalog();
}
class _EffectCatalog {
  _EffectCatalog() {}
  static final _EffectCatalog instance = _EffectCatalog();
}
class _ColorCatalog {
  _ColorCatalog() {
    this.color_0 = Color.fromARGB(0, 0, 0, 0);
    this.color_1 = Color.fromARGB(255, 196, 196, 196);
    this.color_2 = Color.fromARGB(255, 176, 52, 52);
  }
  Color color_0;
  Color color_1;
  Color color_2;
  static final _ColorCatalog instance = _ColorCatalog();
}
class _TextStyleCatalog {
  _TextStyleCatalog() {}
  static final _TextStyleCatalog instance = _TextStyleCatalog();
}
class Data {
  Data({this.isVisible});
  final bool isVisible;
  @override
  bool operator ==(o) => o is Data && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}
class TextData extends Data {
  TextData({isVisible, this.text}) : super(isVisible: isVisible);
  final String text;
  @override
  bool operator ==(o) =>
      o is TextData && isVisible == o.isVisible && text == o.text;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    result = 37 * result + (this.text?.hashCode ?? 0);
    return result;
  }
}
class VectorData extends Data {
  VectorData({isVisible}) : super(isVisible: isVisible);
  @override
  bool operator ==(o) => o is VectorData && isVisible == o.isVisible;
  @override
  int get hashcode {
    int result = 17;
    result = 37 * result + (this.isVisible?.hashCode ?? 0);
    return result;
  }
}