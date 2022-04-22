import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/pages/search/widget/app_search_bar.dart';

import 'logic.dart';

class SearchPage extends StatelessWidget {
  final logic = Get.put(SearchLogic());
  final state = Get.find<SearchLogic>().state;

  SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _buildSliverAppBar(),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return const SliverAppBar(
      pinned: true,
      title: AppSearchBar(),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 15.0),
        )
      ],
    );
  }
}
