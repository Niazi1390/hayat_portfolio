// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/browser.dart';
import 'package:devfolio/components/contact.dart' as prefix0;

void main() {
  runAppWithParams(getComponentForParams);
}

Component getComponentForParams(ConfigParams p) {
  return prefix0.ContactCard(
      icon: p.get('icon'), title: p.get('title'), description: p.get('description'), action: p.get('action'));
}
