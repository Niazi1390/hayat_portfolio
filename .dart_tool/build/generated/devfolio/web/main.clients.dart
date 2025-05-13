// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/browser.dart';
import 'components/app_button.client.dart' deferred as prefix0;
import 'components/contact.client.dart' deferred as prefix1;
import 'components/footer.client.dart' deferred as prefix2;
import 'components/nav_bar.client.dart' deferred as prefix3;
import 'components/project_card.client.dart' deferred as prefix4;
import 'components/service_card.client.dart' deferred as prefix5;
import 'sections/about_me.client.dart' deferred as prefix6;
import 'app.client.dart' deferred as prefix7;

void main() {
  registerClients({
    'sections/about_me': loadClient(prefix6.loadLibrary, (p) => prefix6.getComponentForParams(p)),
    'components/project_card': loadClient(prefix4.loadLibrary, (p) => prefix4.getComponentForParams(p)),
    'components/contact': loadClient(prefix1.loadLibrary, (p) => prefix1.getComponentForParams(p)),
    'components/app_button': loadClient(prefix0.loadLibrary, (p) => prefix0.getComponentForParams(p)),
    'components/nav_bar': loadClient(prefix3.loadLibrary, (p) => prefix3.getComponentForParams(p)),
    'components/footer': loadClient(prefix2.loadLibrary, (p) => prefix2.getComponentForParams(p)),
    'components/service_card': loadClient(prefix5.loadLibrary, (p) => prefix5.getComponentForParams(p)),
    'app': loadClient(prefix7.loadLibrary, (p) => prefix7.getComponentForParams(p)),
  });
}
