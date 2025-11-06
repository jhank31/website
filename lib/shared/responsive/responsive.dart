import 'package:flutter/widgets.dart';


class Breakpoints {
static const double mobile = 600;
static const double tablet = 1024;
static const double desktop = 1440;
}


extension ContextSize on BuildContext {
bool get isMobile => MediaQuery.sizeOf(this).width < Breakpoints.mobile;
bool get isTablet =>
MediaQuery.sizeOf(this).width >= Breakpoints.mobile &&
MediaQuery.sizeOf(this).width < Breakpoints.tablet;
bool get isDesktop => MediaQuery.sizeOf(this).width >= Breakpoints.tablet;
}