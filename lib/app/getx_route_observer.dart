import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/router_report.dart';

class GetXRouteObserver extends NavigatorObserver {

  static List routes = [];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    RouterReportManager.reportCurrentRoute(route);
    routes.add(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) async {
    RouterReportManager.reportRouteDispose(route);
    routes.remove(route);
    updateRoutes();
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    routes.remove(route);
    updateRoutes();
  }

  void updateRoutes() {
    if (routes.length == 1 || routes.last.settings.name == "/") {

    }
  }
}
