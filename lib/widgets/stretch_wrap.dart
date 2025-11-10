import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class Stretch extends ParentDataWidget<StretchWrapParentData> {
  const Stretch({
    super.key,
    this.flex = 1,
    this.minWidth = 0.0,
    this.maxWidth = double.infinity,
    required super.child,
  });

  final int flex;
  final double minWidth;
  final double maxWidth;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is StretchWrapParentData);
    final parentData = renderObject.parentData! as StretchWrapParentData;

    if (parentData.flex != flex ||
        parentData.minWidth != minWidth ||
        parentData.maxWidth != maxWidth) {
      parentData.flex = flex;
      parentData.minWidth = minWidth;
      parentData.maxWidth = maxWidth;
      final targetObject = renderObject.parent;
      if (targetObject is RenderObject) {
        targetObject.markNeedsLayout();
      }
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => StretchWrap;
}

class StretchWrap extends MultiChildRenderObjectWidget {
  const StretchWrap({
    super.key,
    required super.children,
    this.spacing = 0.0,
    this.runSpacing = 0.0,
    this.alignment = WrapAlignment.start,
    this.crossAxisAlignment = WrapCrossAlignment.start,
  });

  final double spacing;
  final double runSpacing;
  final WrapAlignment alignment;
  final WrapCrossAlignment crossAxisAlignment;

  @override
  RenderStretchWrap createRenderObject(BuildContext context) {
    return RenderStretchWrap(
      spacing: spacing,
      runSpacing: runSpacing,
      alignment: alignment,
      crossAxisAlignment: crossAxisAlignment,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    RenderStretchWrap renderObject,
  ) {
    renderObject
      ..spacing = spacing
      ..runSpacing = runSpacing
      ..alignment = alignment
      ..crossAxisAlignment = crossAxisAlignment;
  }
}

class StretchWrapParentData extends ContainerBoxParentData<RenderBox> {
  int? flex;
  double? minWidth;
  double? maxWidth;
}

class RenderStretchWrap extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, StretchWrapParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, StretchWrapParentData> {
  RenderStretchWrap({
    required double spacing,
    required double runSpacing,
    WrapAlignment alignment = WrapAlignment.start,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
  }) : _spacing = spacing,
       _runSpacing = runSpacing,
       _alignment = alignment,
       _crossAxisAlignment = crossAxisAlignment;

  double _spacing;
  double get spacing => _spacing;
  set spacing(double value) {
    if (_spacing == value) return;
    _spacing = value;
    markNeedsLayout();
  }

  double _runSpacing;
  double get runSpacing => _runSpacing;
  set runSpacing(double value) {
    if (_runSpacing == value) return;
    _runSpacing = value;
    markNeedsLayout();
  }

  WrapAlignment _alignment;
  WrapAlignment get alignment => _alignment;
  set alignment(WrapAlignment value) {
    if (_alignment == value) return;
    _alignment = value;
    markNeedsLayout();
  }

  WrapCrossAlignment _crossAxisAlignment;
  WrapCrossAlignment get crossAxisAlignment => _crossAxisAlignment;
  set crossAxisAlignment(WrapCrossAlignment value) {
    if (_crossAxisAlignment == value) return;
    _crossAxisAlignment = value;
    markNeedsLayout();
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! StretchWrapParentData) {
      child.parentData = StretchWrapParentData();
    }
  }

  List<Run> _computeRuns(BoxConstraints constraints) {
    final List<Run> runs = [];
    Run run = Run(maxWidth: constraints.maxWidth, spacing: spacing);
    for (
      RenderBox? child = firstChild;
      child != null;
      child = (child.parentData! as StretchWrapParentData).nextSibling
    ) {
      final childParentData = child.parentData! as StretchWrapParentData;
      final childMinWidth = childParentData.minWidth ?? 0.0;
      final childMaxWidth = childParentData.maxWidth;

      // Clamp maxWidth to parent's constraints
      final maxChildWidth =
          childMaxWidth != null
              ? min(childMaxWidth, constraints.maxWidth)
              : constraints.maxWidth;

      // Ensure minWidth <= maxWidth
      final effectiveMinWidth = min(childMinWidth, maxChildWidth);

      child.layout(
        BoxConstraints(
          minWidth: effectiveMinWidth, // Clamped minWidth
          maxWidth: maxChildWidth,
        ),
        parentUsesSize: true,
      );

      if (!run.fits(child)) {
        runs.add(run);
        run = Run(maxWidth: constraints.maxWidth, spacing: spacing);
      }

      run.add(child);
    }
    if (run.children.isNotEmpty) {
      runs.add(run);
    }
    return runs;
  }

  @override
  void performLayout() {
    final runs = _computeRuns(constraints);
    double y = 0.0;
    for (final run in runs) {
      // Calculate fixed and flex totals
      double totalFixedWidth = 0.0;
      int totalFlex = 0;
      for (final child in run.children) {
        final childParentData = child.parentData! as StretchWrapParentData;
        if (childParentData.flex == null) {
          totalFixedWidth += run.sizes[child]!.width;
        } else {
          totalFlex += childParentData.flex!;
        }
      }

      double remainingWidth =
          run.maxWidth - totalFixedWidth - (run.children.length - 1) * spacing;
      double initialExtraPerFlex =
          totalFlex > 0 ? remainingWidth / totalFlex : 0.0;

      for (final child in run.children) {
        final childParentData = child.parentData! as StretchWrapParentData;
        if (childParentData.flex != null) {
          double flexWidth = initialExtraPerFlex * childParentData.flex!;
          double maxWidth = childParentData.maxWidth ?? double.infinity;
          double minWidth = childParentData.minWidth ?? 0;
          if (flexWidth > maxWidth) {
            remainingWidth -= maxWidth;
            totalFlex -= childParentData.flex!;
          }
          if (flexWidth < minWidth) {
            remainingWidth -= minWidth;
            totalFlex -= childParentData.flex!;
          }
        }
      }

      double extraPerFlex = totalFlex > 0 ? remainingWidth / totalFlex : 0.0;

      // Lay out children with final widths
      for (final child in run.children) {
        final childParentData = child.parentData! as StretchWrapParentData;
        final childMinWidth = childParentData.minWidth ?? 0.0;
        final childMaxWidth = childParentData.maxWidth ?? double.infinity;
        double width =
            childParentData.flex == null
                ? run.sizes[child]!.width
                : initialExtraPerFlex * childParentData.flex!;
        if (width < childMinWidth) {
          width = childMinWidth;
        } else if (width > childMaxWidth) {
          width = childMaxWidth;
        } else if (childParentData.flex != null) {
          width = extraPerFlex * childParentData.flex!;
        }

        child.layout(
          BoxConstraints.tightFor(width: width),
          parentUsesSize: true,
        );
      }

      // Calculate actual max height
      double maxRunHeight = 0.0;
      for (final child in run.children) {
        maxRunHeight = max(maxRunHeight, child.size.height);
      }

      // Position children
      final childWidths =
          run.children.map((child) => child.size.width).toList();
      final totalRunWidth =
          childWidths.fold(0.0, (prev, curr) => prev + curr) +
          (run.children.length - 1) * spacing;
      final remainingMainSpace = run.maxWidth - totalRunWidth;
      final xPositions = _calculateXPositions(
        run.children,
        spacing,
        remainingMainSpace,
        alignment,
      );

      for (int i = 0; i < run.children.length; i++) {
        final child = run.children[i];
        final childParentData = child.parentData! as StretchWrapParentData;
        final x = xPositions[i];
        final yOffset = _calculateYOffset(
          child.size.height,
          maxRunHeight,
          crossAxisAlignment,
        );
        childParentData.offset = Offset(x, y + yOffset);
      }

      y += maxRunHeight + runSpacing;
    }

    size = constraints.constrainDimensions(
      constraints.maxWidth,
      y - (runSpacing > 0 && runs.isNotEmpty ? runSpacing : 0),
    );
  }

  List<double> _calculateXPositions(
    List<RenderBox> children,
    double spacing,
    double remainingSpace,
    WrapAlignment alignment,
  ) {
    if (children.isEmpty) return [];

    final positions = <double>[];
    double x = 0.0;

    switch (alignment) {
      case WrapAlignment.start:
        x = 0.0;
        break;
      case WrapAlignment.end:
        x = remainingSpace;
        break;
      case WrapAlignment.center:
        x = remainingSpace / 2;
        break;
      case WrapAlignment.spaceBetween:
        if (children.length == 1) {
          x = 0.0;
        } else {
          final spacingBetween = remainingSpace / (children.length - 1);
          x = 0.0;
          positions.add(x);
          for (int i = 1; i < children.length; i++) {
            x += children[i - 1].size.width + spacing + spacingBetween;
            positions.add(x);
          }
          return positions;
        }
        break;
      case WrapAlignment.spaceAround:
        final spacingBetween = remainingSpace / children.length;
        x = spacingBetween / 2;
        break;
      case WrapAlignment.spaceEvenly:
        final spacingBetween = remainingSpace / (children.length + 1);
        x = spacingBetween;
        break;
    }

    positions.add(x);
    for (int i = 1; i < children.length; i++) {
      x += children[i - 1].size.width + spacing;
      if (alignment == WrapAlignment.spaceAround) {
        x += spacing * 2;
      }
      positions.add(x);
    }

    return positions;
  }

  double _calculateYOffset(
    double childHeight,
    double runHeight,
    WrapCrossAlignment alignment,
  ) {
    switch (alignment) {
      case WrapCrossAlignment.start:
        return 0.0;
      case WrapCrossAlignment.center:
        return (runHeight - childHeight) / 2;
      case WrapCrossAlignment.end:
        return runHeight - childHeight;
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }
}

class Run {
  final List<RenderBox> children = [];
  final Map<RenderBox, Size> sizes = {};
  int flex = 0;
  double height = 0.0;
  double width = 0.0;
  final double maxWidth;
  final double spacing;

  Run({required this.maxWidth, required this.spacing});

  bool fits(RenderBox child) {
    final childParentData = child.parentData! as StretchWrapParentData;
    final childMinWidth =
        childParentData.minWidth ??
        (childParentData.flex == null ? child.size.width : 0.0);

    if (children.isNotEmpty && width + spacing + childMinWidth > maxWidth) {
      return false;
    }
    return true;
  }

  void add(RenderBox child) {
    children.add(child);
    sizes[child] = child.size;
    double? minWidth = (child.parentData as StretchWrapParentData).minWidth;
    double childWidth = minWidth ?? child.size.width;
    width += childWidth + (children.length > 1 ? spacing : 0);
    height = max(height, child.size.height);
    flex += (child.parentData as StretchWrapParentData).flex ?? 0;
  }
}
