import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../utils/ui/appbar.dart';
import 'logic.dart';

class WebPage extends StatelessWidget {
  final logic = Get.put(WebLogic());
  final state = Get.find<WebLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WebLogic>(builder: (logic) {
      return Scaffold(
        appBar: UIAppBar.buildAppBar(logic.state.pageTitle),
        body: Stack(
          children: [
            buildWebView(),
            Container(
              height: state.loading ? 0 : 2,
              child: LinearProgressIndicator(
                value: null,
                backgroundColor: Colors.grey.withAlpha(33),
                valueColor: const AlwaysStoppedAnimation(Color(0xff4a4a4a)),
              ),
            )
          ],
        ),
      );
    });
  }

  Widget buildWebView() {
    return GetBuilder<WebLogic>(builder: (logic) {
      return Container(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          navigationDelegate: (navigation) {
            if (!navigation.url.startsWith("http")) {
              launch(navigation.url);
              return NavigationDecision.prevent;
            } else {
              state.webViewController.loadUrl(navigation.url);
              return NavigationDecision.prevent;
            }
          },
          initialUrl: state.url,
          onPageFinished: (url) {
            state.loading = false;
          },
          onPageStarted: (url) {
            state.loading = true;
          },
          onWebViewCreated: (webViewController) {
            state.webViewController = webViewController;
          },
          initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
        ),
      );
    });
  }
}
