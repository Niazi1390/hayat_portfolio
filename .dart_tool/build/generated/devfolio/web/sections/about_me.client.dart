// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/browser.dart';
import 'package:devfolio/sections/about_me.dart' as prefix0;

void main() {
  runAppWithParams(getComponentForParams);
}

Component getComponentForParams(ConfigParams p) {
  return prefix0.AboutMeSection(about: p.get('about'), basic: p.get('basic'));
}
