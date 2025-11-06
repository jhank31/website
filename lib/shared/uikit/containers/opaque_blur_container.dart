import 'dart:ui';
import 'package:flutter/material.dart';

/// {@template opaque_blur_container}
/// A container with an opaque blur effect.
/// {@endtemplate}
class OpaqueBlurContainer extends StatelessWidget {
  /// the child of the container
  final Widget? child;

  /// the blur of the container
  final double blur;

  /// the opacity of the container
  final double opacity;

  /// the border radius of the container
  final double borderRadius;

  /// the padding of the container
  final EdgeInsets padding;

  /// the color of the container
  final Color color;

  /// the border of the container
  final BoxBorder? border;

  /// {@macro opaque_blur_container}
  const OpaqueBlurContainer({
    super.key,
    this.child,
    this.blur = 12,
    this.opacity = 0.85,
    this.borderRadius = 16,
    this.padding = const EdgeInsets.all(16),
    this.color = Colors.white,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          // Efecto de blur detrás (sin transparencia real)
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
              child: const SizedBox(),
            ),
          ),

          // Capa opaca encima (da el efecto mate)
          Container(
            padding: padding,
            decoration: BoxDecoration(
              color: color.withValues(alpha: opacity),
              borderRadius: BorderRadius.circular(borderRadius),
              border:
                  border ??
                  Border.all(
                    color: Colors.black.withValues(alpha: 0.05),
                    width: 1,
                  ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
