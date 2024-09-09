import 'package:fluro/fluro.dart';
import 'package:vertical_landig_page/router/router_hadlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();
  static void configureRoutes() {
    //RUTAS
    router.define('/:page', handler: homeHandler);

    //404
    router.notFoundHandler = homeHandler;
  }
}
