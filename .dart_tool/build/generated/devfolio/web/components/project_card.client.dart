// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/browser.dart';
import 'package:devfolio/components/project_card.dart' as prefix0;

void main() {
  runAppWithParams(getComponentForParams);
}

Component getComponentForParams(ConfigParams p) {
  return prefix0.ProjectCard(
      title: p.get('title'),
      description: p.get('description'),
      icon: p.get('icon'),
      banner: p.get('banner'),
      url: p.get('url'));
}
