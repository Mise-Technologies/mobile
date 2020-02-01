import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Group10 extends StatelessWidget {
  Group10();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: Group10Painter());
  }
}

class Group10Painter extends CustomPainter {
  Group10Painter();

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.transparent, BlendMode.screen);
    var frame = Offset.zero & size;
    canvas.translate(-45.0000000000, -15.0000000000);

// 49:3 : Group 10 (COMPONENT)
    var draw_49_3 = (Canvas canvas, Rect container) {
      var frame = Rect.fromLTWH(
          45.0000000000,
          15.0000000000,
          (container.width - (0.0)),
          (container.height -
              (0.0))) /* H:LEFT_RIGHT V:TOP_BOTTOM F:(l:45,t:15,r:-45,b:-45,w:360,h:402) */;
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

// 6:2 : Subtract (BOOLEAN_OPERATION)
      var draw_6_2 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(0.0, 1.0000000000, 360.0000000000,
            401.0000000000) /* H:SCALE V:SCALE F:(l:0,t:1,r:0,b:0,w:360,h:401) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 402.0000000000);
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
          (frame.width / 360.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 401.0000000000),
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
        var fillGeometry = [_PathCatalog.instance.path_0.transform(transform)];
        fillGeometry.forEach((path) {
          var effectPaint = _EffectCatalog.instance.paint_0;
          canvas.save();
          canvas.translate(0.0, 6.0000000000);
          canvas.drawPath(path, effectPaint);
          canvas.restore();
        });
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_0);
        });
        canvas.restore();
      };
      draw_6_2(canvas, frame);

// 6:7 : Rectangle 19 (RECTANGLE)
      var draw_6_7 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(70.0000000000, 21.0000000000, 270.0000000000,
            40.0000000000) /* H:SCALE V:SCALE F:(l:70,t:21,r:20,b:20,w:270,h:40) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 402.0000000000);
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
          (frame.width / 270.0000000000),
          0.0,
          0.0,
          0.0,
          0.0,
          (frame.height / 40.0000000000),
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
          Path()
            ..addRRect(RRect.fromRectAndRadius(
                Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                Radius.circular(100)))
        ];
        fillGeometry.forEach((path) {
          var effectPaint = _EffectCatalog.instance.paint_0;
          canvas.save();
          canvas.translate(0.0, 3.0000000000);
          canvas.drawPath(path, effectPaint);
          canvas.restore();
        });
        fillGeometry.forEach((path) {
          canvas.drawPath(path, _PaintCatalog.instance.paint_1);
        });
        canvas.restore();
      };
      draw_6_7(canvas, frame);

// 6:8 : Search Ingredient (TEXT)
      var draw_6_8 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(90.0000000000, 30.0000000000, 148.0000000000,
            22.0000000000) /* H:SCALE V:SCALE F:(l:90,t:30,r:122,b:122,w:148,h:22) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 402.0000000000);
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
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_0;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'HK Grotesk',
          textAlign: TextAlign.left,
          fontSize: 18.0000000000,
          fontWeight: FontWeight.w500,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Search Ingredient");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      };
      draw_6_8(canvas, frame);

// 6:9 : Common Allergens (TEXT)
      var draw_6_9 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(90.0000000000, 93.0000000000, 153.0000000000,
            22.0000000000) /* H:SCALE V:SCALE F:(l:90,t:93,r:117,b:117,w:153,h:22) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 402.0000000000);
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
        var style_0 = _TextStyleCatalog.instance.ui_TextStyle_1;
        var paragraphStyle = ui.ParagraphStyle(
          fontFamily: 'HK Grotesk',
          textAlign: TextAlign.left,
          fontSize: 18.0000000000,
          fontWeight: FontWeight.w700,
        );
        var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
          ..pushStyle(style_0);
        paragraphBuilder.addText("Common Allergens");
        var paragraph = paragraphBuilder.build();
        paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
        canvas.drawParagraph(paragraph, Offset.zero);
        canvas.restore();
      };
      draw_6_9(canvas, frame);

// 6:10 : Nuts (GROUP)
      var draw_6_10 = (Canvas canvas, Rect container) {
// 6:11 : Rectangle (RECTANGLE)
        var draw_6_11 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              90.0000000000,
              139.0000000000,
              18.0000000000,
              18.0000000000) /* H:SCALE V:SCALE F:(l:90,t:139,r:252,b:252,w:18,h:18) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
            (frame.width / 18.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 18.0000000000),
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
          var strokes = [_PaintCatalog.instance.paint_2];
          var strokeGeometry = [
            _PathCatalog.instance.path_1.transform(transform)
          ];
          strokes.forEach((paint) {
            strokeGeometry.forEach((path) {
              canvas.drawPath(path, paint);
            });
          });
          canvas.restore();
        };
        draw_6_11(canvas, frame);

// 6:12 : Nuts (TEXT)
        var draw_6_12 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              117.0000000000,
              138.0000000000,
              39.0000000000,
              22.0000000000) /* H:SCALE V:SCALE F:(l:117,t:138,r:204,b:204,w:39,h:22) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_2;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'HK Grotesk',
            textAlign: TextAlign.left,
            fontSize: 18.0000000000,
            fontWeight: FontWeight.w500,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Nuts");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        };
        draw_6_12(canvas, frame);
      };
      draw_6_10(canvas, frame);

// 6:13 : Dairy (GROUP)
      var draw_6_13 = (Canvas canvas, Rect container) {
// 6:14 : Rectangle (RECTANGLE)
        var draw_6_14 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              90.0000000000,
              189.0000000000,
              18.0000000000,
              18.0000000000) /* H:SCALE V:SCALE F:(l:90,t:189,r:252,b:252,w:18,h:18) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
            (frame.width / 18.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 18.0000000000),
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
          var strokes = [_PaintCatalog.instance.paint_2];
          var strokeGeometry = [
            _PathCatalog.instance.path_2.transform(transform)
          ];
          strokes.forEach((paint) {
            strokeGeometry.forEach((path) {
              canvas.drawPath(path, paint);
            });
          });
          canvas.restore();
        };
        draw_6_14(canvas, frame);

// 6:15 : Dairy (TEXT)
        var draw_6_15 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              117.0000000000,
              188.0000000000,
              45.0000000000,
              22.0000000000) /* H:SCALE V:SCALE F:(l:117,t:188,r:198,b:198,w:45,h:22) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_2;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'HK Grotesk',
            textAlign: TextAlign.left,
            fontSize: 18.0000000000,
            fontWeight: FontWeight.w500,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Dairy");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        };
        draw_6_15(canvas, frame);
      };
      draw_6_13(canvas, frame);

// 6:16 : Gluten (GROUP)
      var draw_6_16 = (Canvas canvas, Rect container) {
// 6:17 : Rectangle (RECTANGLE)
        var draw_6_17 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              90.0000000000,
              239.0000000000,
              18.0000000000,
              18.0000000000) /* H:SCALE V:SCALE F:(l:90,t:239,r:252,b:252,w:18,h:18) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
            (frame.width / 18.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 18.0000000000),
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
          var strokes = [_PaintCatalog.instance.paint_2];
          var strokeGeometry = [
            _PathCatalog.instance.path_3.transform(transform)
          ];
          strokes.forEach((paint) {
            strokeGeometry.forEach((path) {
              canvas.drawPath(path, paint);
            });
          });
          canvas.restore();
        };
        draw_6_17(canvas, frame);

// 6:18 : Gluten (TEXT)
        var draw_6_18 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              117.0000000000,
              238.0000000000,
              56.0000000000,
              22.0000000000) /* H:SCALE V:SCALE F:(l:117,t:238,r:187,b:187,w:56,h:22) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_2;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'HK Grotesk',
            textAlign: TextAlign.left,
            fontSize: 18.0000000000,
            fontWeight: FontWeight.w500,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Gluten");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        };
        draw_6_18(canvas, frame);
      };
      draw_6_16(canvas, frame);

// 6:19 : Shellfish (GROUP)
      var draw_6_19 = (Canvas canvas, Rect container) {
// 6:20 : Rectangle (RECTANGLE)
        var draw_6_20 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              90.0000000000,
              289.0000000000,
              18.0000000000,
              18.0000000000) /* H:SCALE V:SCALE F:(l:90,t:289,r:252,b:252,w:18,h:18) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
            (frame.width / 18.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 18.0000000000),
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
          var strokes = [_PaintCatalog.instance.paint_2];
          var strokeGeometry = [
            _PathCatalog.instance.path_4.transform(transform)
          ];
          strokes.forEach((paint) {
            strokeGeometry.forEach((path) {
              canvas.drawPath(path, paint);
            });
          });
          canvas.restore();
        };
        draw_6_20(canvas, frame);

// 6:21 : Shellfish (TEXT)
        var draw_6_21 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              117.0000000000,
              288.0000000000,
              70.0000000000,
              22.0000000000) /* H:SCALE V:SCALE F:(l:117,t:288,r:173,b:173,w:70,h:22) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
          var style_0 = _TextStyleCatalog.instance.ui_TextStyle_2;
          var paragraphStyle = ui.ParagraphStyle(
            fontFamily: 'HK Grotesk',
            textAlign: TextAlign.left,
            fontSize: 18.0000000000,
            fontWeight: FontWeight.w500,
          );
          var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
            ..pushStyle(style_0);
          paragraphBuilder.addText("Shellfish");
          var paragraph = paragraphBuilder.build();
          paragraph.layout(new ui.ParagraphConstraints(width: frame.width));
          canvas.drawParagraph(paragraph, Offset.zero);
          canvas.restore();
        };
        draw_6_21(canvas, frame);
      };
      draw_6_19(canvas, frame);

// 6:22 : SearchIcon (GROUP)
      var draw_6_22 = (Canvas canvas, Rect container) {
// 6:23 : Ellipse 1 (ELLIPSE)
        var draw_6_23 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(
              308.0000000000,
              32.0000000000,
              14.8499593735,
              14.8499593735) /* H:SCALE V:SCALE F:(l:308,t:32,r:37.15004062652588,b:37.15004062652588,w:14.849959373474121,h:14.849959373474121) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
            (frame.width / 14.8499593735),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 14.8499593735),
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
          var strokes = [_PaintCatalog.instance.paint_0];
          var strokeGeometry = [
            _PathCatalog.instance.path_6.transform(transform)
          ];
          strokes.forEach((paint) {
            strokeGeometry.forEach((path) {
              canvas.drawPath(path, paint);
            });
          });
          canvas.restore();
        };
        draw_6_23(canvas, frame);

// 6:24 : Line 1 (LINE)
        var draw_6_24 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(319.7000083923, 44.1501073837, 8.0119991302,
              0.0) /* H:SCALE V:SCALE F:(l:319.700008392334,t:44.15010738372803,r:32.28799247741699,b:32.28799247741699,w:8.011999130249023,h:0) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
          canvas.transform(Float64List.fromList([
            0.7863183618,
            0.6178215227,
            0.0,
            0.0,
            -0.6178215227,
            0.7863183618,
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
          canvas.restore();
        };
        draw_6_24(canvas, frame);
      };
      draw_6_22(canvas, frame);

// 6:25 : Line 2 (LINE)
      var draw_6_25 = (Canvas canvas, Rect container) {
        var frame = Rect.fromLTWH(360.0000000000, 0.0, 359.0000000000,
            0.0) /* H:SCALE V:SCALE F:(l:360,t:0,r:-359,b:-359,w:359,h:0) */;
        canvas.save();
        canvas.scale((container.width) / 360.0000000000,
            (container.height) / 402.0000000000);
        canvas.transform(Float64List.fromList([
          -0.0000000437,
          1.0000000000,
          0.0,
          0.0,
          -1.0000000000,
          -0.0000000437,
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
        canvas.restore();
      };
      draw_6_25(canvas, frame);

// 6:26 : Group 3 (GROUP)
      var draw_6_26 = (Canvas canvas, Rect container) {
// 6:27 : Group (GROUP)
        var draw_6_27 = (Canvas canvas, Rect container) {
// 6:28 : Group (GROUP)
          var draw_6_28 = (Canvas canvas, Rect container) {
// 6:38 : Group 12 (GROUP)
            var draw_6_38 = (Canvas canvas, Rect container) {
// 6:29 : Rectangle 2 (RECTANGLE)
              var draw_6_29 = (Canvas canvas, Rect container) {
                var frame = Rect.fromLTWH(
                    75.0000000000,
                    342.0000000000,
                    260.0000000000,
                    40.0000000000) /* H:SCALE V:SCALE F:(l:75,t:342,r:25,b:25,w:260,h:40) */;
                canvas.save();
                canvas.scale((container.width) / 360.0000000000,
                    (container.height) / 402.0000000000);
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
                  (frame.width / 260.0000000000),
                  0.0,
                  0.0,
                  0.0,
                  0.0,
                  (frame.height / 40.0000000000),
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
                  Path()
                    ..addRRect(RRect.fromRectAndRadius(
                        Rect.fromLTWH(0.0, 0.0, frame.width, frame.height),
                        Radius.circular(10)))
                ];
                fillGeometry.forEach((path) {
                  canvas.drawPath(path, _PaintCatalog.instance.paint_1);
                });
                canvas.restore();
              };
              draw_6_29(canvas, frame);

// 6:30 : Apply Filters (TEXT)
              var draw_6_30 = (Canvas canvas, Rect container) {
                var frame = Rect.fromLTWH(
                    158.0000000000,
                    352.0000000000,
                    95.0000000000,
                    19.0000000000) /* H:SCALE V:SCALE F:(l:158,t:352,r:107,b:107,w:95,h:19) */;
                canvas.save();
                canvas.scale((container.width) / 360.0000000000,
                    (container.height) / 402.0000000000);
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
                var style_0 = _TextStyleCatalog.instance.ui_TextStyle_3;
                var paragraphStyle = ui.ParagraphStyle(
                  fontFamily: 'HK Grotesk',
                  textAlign: TextAlign.center,
                  fontSize: 16.0000000000,
                  fontWeight: FontWeight.w600,
                );
                var paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
                  ..pushStyle(style_0);
                paragraphBuilder.addText("Apply Filters");
                var paragraph = paragraphBuilder.build();
                paragraph
                    .layout(new ui.ParagraphConstraints(width: frame.width));
                canvas.drawParagraph(paragraph, Offset.zero);
                canvas.restore();
              };
              draw_6_30(canvas, frame);
            };
            draw_6_38(canvas, frame);
          };
          draw_6_28(canvas, frame);
        };
        draw_6_27(canvas, frame);
      };
      draw_6_26(canvas, frame);

// 6:34 : Group 11 (GROUP)
      var draw_6_34 = (Canvas canvas, Rect container) {
// 6:31 : Rectangle 33 (RECTANGLE)
        var draw_6_31 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(0.0, 0.0, 66.0000000000,
              52.0000000000) /* H:SCALE V:SCALE F:(l:0,t:0,r:294,b:294,w:66,h:52) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
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
            (frame.width / 66.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 52.0000000000),
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
            (Path()
              ..addRect(Rect.fromLTWH(0.0, 0.0, frame.width, frame.height)))
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_3);
          });
          canvas.restore();
        };
        draw_6_31(canvas, frame);

// 6:32 : Vector 8 (VECTOR)
        var draw_6_32 = (Canvas canvas, Rect container) {
          var frame = Rect.fromLTWH(21.0000000000, 33.0000000000, 14.0000000000,
              10.0000000000) /* H:SCALE V:SCALE F:(l:21,t:33,r:325,b:325,w:14,h:10) */;
          canvas.save();
          canvas.scale((container.width) / 360.0000000000,
              (container.height) / 402.0000000000);
          canvas.transform(Float64List.fromList([
            -0.0000000437,
            1.0000000000,
            0.0,
            0.0,
            -1.0000000000,
            -0.0000000437,
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
            (frame.width / 14.0000000000),
            0.0,
            0.0,
            0.0,
            0.0,
            (frame.height / 10.0000000000),
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
            _PathCatalog.instance.path_7.transform(transform)
          ];
          fillGeometry.forEach((path) {
            canvas.drawPath(path, _PaintCatalog.instance.paint_4);
          });
          canvas.restore();
        };
        draw_6_32(canvas, frame);
      };
      draw_6_34(canvas, frame);
      canvas.restore();
    };
    draw_49_3(canvas, frame);
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) => [];
  }

  @override
  bool shouldRebuildSemantics(Group10Painter oldDelegate) {
    return shouldRepaint(oldDelegate);
  }

  @override
  bool shouldRepaint(Group10Painter oldDelegate) {
    return false;
  }
}

class _PathCatalog {
  _PathCatalog() {
    this.path_0 = _build_0();
    this.path_1 = _build_1();
    this.path_2 = _build_2();
    this.path_3 = _build_3();
    this.path_4 = _build_4();
    this.path_5 = _build_5();
    this.path_6 = _build_6();
    this.path_7 = _build_7();
  }

  Path path_0;

  Path path_1;

  Path path_2;

  Path path_3;

  Path path_4;

  Path path_5;

  Path path_6;

  Path path_7;

  static final _PathCatalog instance = _PathCatalog();

  static Path _build_0() {
    var path = Path();
    path.moveTo(360.0000000000, 0.0987502000);
    path.cubicTo(
        359.3420000000, 0.0334388000, 358.6750000000, 0.0, 358.0000000000, 0.0);
    path.lineTo(117.0000000000, 0.0);
    path.lineTo(70.0000000000, 0.0);
    path.lineTo(20.0000000000, 0.0);
    path.cubicTo(8.9543100000, 0.0, 0.0, 8.9543000000, 0.0, 20.0000000000);
    path.lineTo(0.0, 30.0000000000);
    path.cubicTo(0.0, 41.0457000000, 8.9543000000, 50.0000000000, 20.0000000000,
        50.0000000000);
    path.lineTo(30.0000000000, 50.0000000000);
    path.cubicTo(41.0457000000, 50.0000000000, 50.0000000000, 58.9543000000,
        50.0000000000, 70.0000000000);
    path.lineTo(50.0000000000, 381.0000000000);
    path.cubicTo(50.0000000000, 392.0460000000, 58.9543000000, 401.0000000000,
        70.0000000000, 401.0000000000);
    path.lineTo(358.0000000000, 401.0000000000);
    path.cubicTo(358.6750000000, 401.0000000000, 359.3420000000, 400.9670000000,
        360.0000000000, 400.9010000000);
    path.lineTo(360.0000000000, 0.0987502000);
    path.close();
    return path;
  }

  static Path _build_1() {
    var path = Path();
    path.moveTo(3.0000000000, 2.0000000000);
    path.lineTo(15.0000000000, 2.0000000000);
    path.lineTo(15.0000000000, -2.0000000000);
    path.lineTo(3.0000000000, -2.0000000000);
    path.lineTo(3.0000000000, 2.0000000000);
    path.close();
    path.moveTo(16.0000000000, 3.0000000000);
    path.lineTo(16.0000000000, 15.0000000000);
    path.lineTo(20.0000000000, 15.0000000000);
    path.lineTo(20.0000000000, 3.0000000000);
    path.lineTo(16.0000000000, 3.0000000000);
    path.close();
    path.moveTo(15.0000000000, 16.0000000000);
    path.lineTo(3.0000000000, 16.0000000000);
    path.lineTo(3.0000000000, 20.0000000000);
    path.lineTo(15.0000000000, 20.0000000000);
    path.lineTo(15.0000000000, 16.0000000000);
    path.close();
    path.moveTo(2.0000000000, 15.0000000000);
    path.lineTo(2.0000000000, 3.0000000000);
    path.lineTo(-2.0000000000, 3.0000000000);
    path.lineTo(-2.0000000000, 15.0000000000);
    path.lineTo(2.0000000000, 15.0000000000);
    path.close();
    path.moveTo(3.0000000000, 16.0000000000);
    path.cubicTo(2.4477200000, 16.0000000000, 2.0000000000, 15.5523000000,
        2.0000000000, 15.0000000000);
    path.lineTo(-2.0000000000, 15.0000000000);
    path.cubicTo(-2.0000000000, 17.7614000000, 0.2385770000, 20.0000000000,
        3.0000000000, 20.0000000000);
    path.lineTo(3.0000000000, 16.0000000000);
    path.close();
    path.moveTo(16.0000000000, 15.0000000000);
    path.cubicTo(16.0000000000, 15.5523000000, 15.5523000000, 16.0000000000,
        15.0000000000, 16.0000000000);
    path.lineTo(15.0000000000, 20.0000000000);
    path.cubicTo(17.7614000000, 20.0000000000, 20.0000000000, 17.7614000000,
        20.0000000000, 15.0000000000);
    path.lineTo(16.0000000000, 15.0000000000);
    path.close();
    path.moveTo(15.0000000000, 2.0000000000);
    path.cubicTo(15.5523000000, 2.0000000000, 16.0000000000, 2.4477200000,
        16.0000000000, 3.0000000000);
    path.lineTo(20.0000000000, 3.0000000000);
    path.cubicTo(20.0000000000, 0.2385760000, 17.7614000000, -2.0000000000,
        15.0000000000, -2.0000000000);
    path.lineTo(15.0000000000, 2.0000000000);
    path.close();
    path.moveTo(3.0000000000, -2.0000000000);
    path.cubicTo(0.2385760000, -2.0000000000, -2.0000000000, 0.2385770000,
        -2.0000000000, 3.0000000000);
    path.lineTo(2.0000000000, 3.0000000000);
    path.cubicTo(2.0000000000, 2.4477200000, 2.4477200000, 2.0000000000,
        3.0000000000, 2.0000000000);
    path.lineTo(3.0000000000, -2.0000000000);
    path.close();
    return path;
  }

  static Path _build_2() {
    var path = Path();
    path.moveTo(3.0000000000, 2.0000000000);
    path.lineTo(15.0000000000, 2.0000000000);
    path.lineTo(15.0000000000, -2.0000000000);
    path.lineTo(3.0000000000, -2.0000000000);
    path.lineTo(3.0000000000, 2.0000000000);
    path.close();
    path.moveTo(16.0000000000, 3.0000000000);
    path.lineTo(16.0000000000, 15.0000000000);
    path.lineTo(20.0000000000, 15.0000000000);
    path.lineTo(20.0000000000, 3.0000000000);
    path.lineTo(16.0000000000, 3.0000000000);
    path.close();
    path.moveTo(15.0000000000, 16.0000000000);
    path.lineTo(3.0000000000, 16.0000000000);
    path.lineTo(3.0000000000, 20.0000000000);
    path.lineTo(15.0000000000, 20.0000000000);
    path.lineTo(15.0000000000, 16.0000000000);
    path.close();
    path.moveTo(2.0000000000, 15.0000000000);
    path.lineTo(2.0000000000, 3.0000000000);
    path.lineTo(-2.0000000000, 3.0000000000);
    path.lineTo(-2.0000000000, 15.0000000000);
    path.lineTo(2.0000000000, 15.0000000000);
    path.close();
    path.moveTo(3.0000000000, 16.0000000000);
    path.cubicTo(2.4477200000, 16.0000000000, 2.0000000000, 15.5523000000,
        2.0000000000, 15.0000000000);
    path.lineTo(-2.0000000000, 15.0000000000);
    path.cubicTo(-2.0000000000, 17.7614000000, 0.2385770000, 20.0000000000,
        3.0000000000, 20.0000000000);
    path.lineTo(3.0000000000, 16.0000000000);
    path.close();
    path.moveTo(16.0000000000, 15.0000000000);
    path.cubicTo(16.0000000000, 15.5523000000, 15.5523000000, 16.0000000000,
        15.0000000000, 16.0000000000);
    path.lineTo(15.0000000000, 20.0000000000);
    path.cubicTo(17.7614000000, 20.0000000000, 20.0000000000, 17.7614000000,
        20.0000000000, 15.0000000000);
    path.lineTo(16.0000000000, 15.0000000000);
    path.close();
    path.moveTo(15.0000000000, 2.0000000000);
    path.cubicTo(15.5523000000, 2.0000000000, 16.0000000000, 2.4477200000,
        16.0000000000, 3.0000000000);
    path.lineTo(20.0000000000, 3.0000000000);
    path.cubicTo(20.0000000000, 0.2385760000, 17.7614000000, -2.0000000000,
        15.0000000000, -2.0000000000);
    path.lineTo(15.0000000000, 2.0000000000);
    path.close();
    path.moveTo(3.0000000000, -2.0000000000);
    path.cubicTo(0.2385760000, -2.0000000000, -2.0000000000, 0.2385770000,
        -2.0000000000, 3.0000000000);
    path.lineTo(2.0000000000, 3.0000000000);
    path.cubicTo(2.0000000000, 2.4477200000, 2.4477200000, 2.0000000000,
        3.0000000000, 2.0000000000);
    path.lineTo(3.0000000000, -2.0000000000);
    path.close();
    return path;
  }

  static Path _build_3() {
    var path = Path();
    path.moveTo(3.0000000000, 2.0000000000);
    path.lineTo(15.0000000000, 2.0000000000);
    path.lineTo(15.0000000000, -2.0000000000);
    path.lineTo(3.0000000000, -2.0000000000);
    path.lineTo(3.0000000000, 2.0000000000);
    path.close();
    path.moveTo(16.0000000000, 3.0000000000);
    path.lineTo(16.0000000000, 15.0000000000);
    path.lineTo(20.0000000000, 15.0000000000);
    path.lineTo(20.0000000000, 3.0000000000);
    path.lineTo(16.0000000000, 3.0000000000);
    path.close();
    path.moveTo(15.0000000000, 16.0000000000);
    path.lineTo(3.0000000000, 16.0000000000);
    path.lineTo(3.0000000000, 20.0000000000);
    path.lineTo(15.0000000000, 20.0000000000);
    path.lineTo(15.0000000000, 16.0000000000);
    path.close();
    path.moveTo(2.0000000000, 15.0000000000);
    path.lineTo(2.0000000000, 3.0000000000);
    path.lineTo(-2.0000000000, 3.0000000000);
    path.lineTo(-2.0000000000, 15.0000000000);
    path.lineTo(2.0000000000, 15.0000000000);
    path.close();
    path.moveTo(3.0000000000, 16.0000000000);
    path.cubicTo(2.4477200000, 16.0000000000, 2.0000000000, 15.5523000000,
        2.0000000000, 15.0000000000);
    path.lineTo(-2.0000000000, 15.0000000000);
    path.cubicTo(-2.0000000000, 17.7614000000, 0.2385770000, 20.0000000000,
        3.0000000000, 20.0000000000);
    path.lineTo(3.0000000000, 16.0000000000);
    path.close();
    path.moveTo(16.0000000000, 15.0000000000);
    path.cubicTo(16.0000000000, 15.5523000000, 15.5523000000, 16.0000000000,
        15.0000000000, 16.0000000000);
    path.lineTo(15.0000000000, 20.0000000000);
    path.cubicTo(17.7614000000, 20.0000000000, 20.0000000000, 17.7614000000,
        20.0000000000, 15.0000000000);
    path.lineTo(16.0000000000, 15.0000000000);
    path.close();
    path.moveTo(15.0000000000, 2.0000000000);
    path.cubicTo(15.5523000000, 2.0000000000, 16.0000000000, 2.4477200000,
        16.0000000000, 3.0000000000);
    path.lineTo(20.0000000000, 3.0000000000);
    path.cubicTo(20.0000000000, 0.2385760000, 17.7614000000, -2.0000000000,
        15.0000000000, -2.0000000000);
    path.lineTo(15.0000000000, 2.0000000000);
    path.close();
    path.moveTo(3.0000000000, -2.0000000000);
    path.cubicTo(0.2385760000, -2.0000000000, -2.0000000000, 0.2385770000,
        -2.0000000000, 3.0000000000);
    path.lineTo(2.0000000000, 3.0000000000);
    path.cubicTo(2.0000000000, 2.4477200000, 2.4477200000, 2.0000000000,
        3.0000000000, 2.0000000000);
    path.lineTo(3.0000000000, -2.0000000000);
    path.close();
    return path;
  }

  static Path _build_4() {
    var path = Path();
    path.moveTo(3.0000000000, 2.0000000000);
    path.lineTo(15.0000000000, 2.0000000000);
    path.lineTo(15.0000000000, -2.0000000000);
    path.lineTo(3.0000000000, -2.0000000000);
    path.lineTo(3.0000000000, 2.0000000000);
    path.close();
    path.moveTo(16.0000000000, 3.0000000000);
    path.lineTo(16.0000000000, 15.0000000000);
    path.lineTo(20.0000000000, 15.0000000000);
    path.lineTo(20.0000000000, 3.0000000000);
    path.lineTo(16.0000000000, 3.0000000000);
    path.close();
    path.moveTo(15.0000000000, 16.0000000000);
    path.lineTo(3.0000000000, 16.0000000000);
    path.lineTo(3.0000000000, 20.0000000000);
    path.lineTo(15.0000000000, 20.0000000000);
    path.lineTo(15.0000000000, 16.0000000000);
    path.close();
    path.moveTo(2.0000000000, 15.0000000000);
    path.lineTo(2.0000000000, 3.0000000000);
    path.lineTo(-2.0000000000, 3.0000000000);
    path.lineTo(-2.0000000000, 15.0000000000);
    path.lineTo(2.0000000000, 15.0000000000);
    path.close();
    path.moveTo(3.0000000000, 16.0000000000);
    path.cubicTo(2.4477200000, 16.0000000000, 2.0000000000, 15.5523000000,
        2.0000000000, 15.0000000000);
    path.lineTo(-2.0000000000, 15.0000000000);
    path.cubicTo(-2.0000000000, 17.7614000000, 0.2385770000, 20.0000000000,
        3.0000000000, 20.0000000000);
    path.lineTo(3.0000000000, 16.0000000000);
    path.close();
    path.moveTo(16.0000000000, 15.0000000000);
    path.cubicTo(16.0000000000, 15.5523000000, 15.5523000000, 16.0000000000,
        15.0000000000, 16.0000000000);
    path.lineTo(15.0000000000, 20.0000000000);
    path.cubicTo(17.7614000000, 20.0000000000, 20.0000000000, 17.7614000000,
        20.0000000000, 15.0000000000);
    path.lineTo(16.0000000000, 15.0000000000);
    path.close();
    path.moveTo(15.0000000000, 2.0000000000);
    path.cubicTo(15.5523000000, 2.0000000000, 16.0000000000, 2.4477200000,
        16.0000000000, 3.0000000000);
    path.lineTo(20.0000000000, 3.0000000000);
    path.cubicTo(20.0000000000, 0.2385760000, 17.7614000000, -2.0000000000,
        15.0000000000, -2.0000000000);
    path.lineTo(15.0000000000, 2.0000000000);
    path.close();
    path.moveTo(3.0000000000, -2.0000000000);
    path.cubicTo(0.2385760000, -2.0000000000, -2.0000000000, 0.2385770000,
        -2.0000000000, 3.0000000000);
    path.lineTo(2.0000000000, 3.0000000000);
    path.cubicTo(2.0000000000, 2.4477200000, 2.4477200000, 2.0000000000,
        3.0000000000, 2.0000000000);
    path.lineTo(3.0000000000, -2.0000000000);
    path.close();
    return path;
  }

  static Path _build_5() {
    var path = Path();
    path.moveTo(14.8500000000, 7.4249800000);
    path.cubicTo(14.8500000000, 11.5257000000, 11.5257000000, 14.8500000000,
        7.4249800000, 14.8500000000);
    path.cubicTo(
        3.3242800000, 14.8500000000, 0.0, 11.5257000000, 0.0, 7.4249800000);
    path.cubicTo(0.0, 3.3242800000, 3.3242800000, 0.0, 7.4249800000, 0.0);
    path.cubicTo(11.5257000000, 0.0, 14.8500000000, 3.3242800000, 14.8500000000,
        7.4249800000);
    path.close();
    return path;
  }

  static Path _build_6() {
    var path = Path();
    path.moveTo(12.8500000000, 7.4249800000);
    path.cubicTo(12.8500000000, 10.4211000000, 10.4211000000, 12.8500000000,
        7.4249800000, 12.8500000000);
    path.lineTo(7.4249800000, 16.8500000000);
    path.cubicTo(12.6303000000, 16.8500000000, 16.8500000000, 12.6303000000,
        16.8500000000, 7.4249800000);
    path.lineTo(12.8500000000, 7.4249800000);
    path.close();
    path.moveTo(7.4249800000, 12.8500000000);
    path.cubicTo(4.4288500000, 12.8500000000, 2.0000000000, 10.4211000000,
        2.0000000000, 7.4249800000);
    path.lineTo(-2.0000000000, 7.4249800000);
    path.cubicTo(-2.0000000000, 12.6303000000, 2.2197100000, 16.8500000000,
        7.4249800000, 16.8500000000);
    path.lineTo(7.4249800000, 12.8500000000);
    path.close();
    path.moveTo(2.0000000000, 7.4249800000);
    path.cubicTo(2.0000000000, 4.4288500000, 4.4288500000, 2.0000000000,
        7.4249800000, 2.0000000000);
    path.lineTo(7.4249800000, -2.0000000000);
    path.cubicTo(2.2197100000, -2.0000000000, -2.0000000000, 2.2197100000,
        -2.0000000000, 7.4249800000);
    path.lineTo(2.0000000000, 7.4249800000);
    path.close();
    path.moveTo(7.4249800000, 2.0000000000);
    path.cubicTo(10.4211000000, 2.0000000000, 12.8500000000, 4.4288500000,
        12.8500000000, 7.4249800000);
    path.lineTo(16.8500000000, 7.4249800000);
    path.cubicTo(16.8500000000, 2.2197100000, 12.6303000000, -2.0000000000,
        7.4249800000, -2.0000000000);
    path.lineTo(7.4249800000, 2.0000000000);
    path.close();
    return path;
  }

  static Path _build_7() {
    var path = Path();
    path.moveTo(12.0793000000, 0.0);
    path.lineTo(1.9206600000, 0.0);
    path.cubicTo(1.1116300000, 0.0, 0.6374800000, 0.9106860000, 1.1014200000,
        1.5734600000);
    path.lineTo(6.1807700000, 8.8296700000);
    path.cubicTo(6.5788700000, 9.3983900000, 7.4211300000, 9.3983800000,
        7.8192300000, 8.8296700000);
    path.lineTo(12.8986000000, 1.5734600000);
    path.cubicTo(
        13.3625000000, 0.9106850000, 12.8884000000, 0.0, 12.0793000000, 0.0);
    path.close();
    return path;
  }
}

class _PaintCatalog {
  _PaintCatalog() {
    this.paint_0 = (Paint()..color = _ColorCatalog.instance.color_2);
    this.paint_1 = (Paint()..color = _ColorCatalog.instance.color_3);
    this.paint_2 = (Paint()..color = _ColorCatalog.instance.color_5);
    this.paint_3 = (Paint()..color = _ColorCatalog.instance.color_7);
    this.paint_4 = (Paint()..color = _ColorCatalog.instance.color_4);
  }

  Paint paint_0;

  Paint paint_1;

  Paint paint_2;

  Paint paint_3;

  Paint paint_4;

  static final _PaintCatalog instance = _PaintCatalog();
}

class _EffectCatalog {
  _EffectCatalog() {
    // this.paint_0 = (Paint()
    //   ..color = _ColorCatalog.instance.color_1
    //   ..maskFilter =
    //       MaskFilter.blur(BlurStyle.normal, BoxShadow.convertRadiusToSigma(0)));
  }

  Paint paint_0;

  static final _EffectCatalog instance = _EffectCatalog();
}

class _ColorCatalog {
  _ColorCatalog() {
    this.color_0 = Color.fromARGB(0, 0, 0, 0);
    this.color_1 = Color.fromARGB(63, 0, 0, 0);
    this.color_2 = Color.fromARGB(255, 64, 64, 64);
    this.color_3 = Color.fromARGB(255, 159, 159, 159);
    this.color_4 = Color.fromARGB(255, 255, 255, 255);
    this.color_5 = Color.fromARGB(127, 255, 255, 255);
    this.color_6 = Color.fromARGB(255, 0, 0, 0);
    this.color_7 = Color.fromARGB(0, 196, 196, 196);
  }

  Color color_0;

  Color color_1;

  Color color_2;

  Color color_3;

  Color color_4;

  Color color_5;

  Color color_6;

  Color color_7;

  static final _ColorCatalog instance = _ColorCatalog();
}

class _TextStyleCatalog {
  _TextStyleCatalog() {
    this.ui_TextStyle_0 = ui.TextStyle(
      fontFamily: 'HK Grotesk',
      color: _ColorCatalog.instance.color_2,
      fontSize: 18.0000000000,
      fontWeight: FontWeight.w500,
    );
    this.ui_TextStyle_1 = ui.TextStyle(
      fontFamily: 'HK Grotesk',
      color: _ColorCatalog.instance.color_4,
      fontSize: 18.0000000000,
      fontWeight: FontWeight.w700,
    );
    this.ui_TextStyle_2 = ui.TextStyle(
      fontFamily: 'HK Grotesk',
      color: _ColorCatalog.instance.color_4,
      fontSize: 18.0000000000,
      fontWeight: FontWeight.w500,
    );
    this.ui_TextStyle_3 = ui.TextStyle(
      fontFamily: 'HK Grotesk',
      color: _ColorCatalog.instance.color_6,
      fontSize: 16.0000000000,
      fontWeight: FontWeight.w600,
    );
  }

  ui.TextStyle ui_TextStyle_0;

  ui.TextStyle ui_TextStyle_1;

  ui.TextStyle ui_TextStyle_2;

  ui.TextStyle ui_TextStyle_3;

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
