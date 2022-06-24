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
    return GetBuilder<SearchLogic>(builder: (logic) {
      return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            _buildSliverAppBar(),
            _buildSliverList(logic.state.kwTips.getData()),
          ],
        ),
      );
    });
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

  Widget _buildSliverList(List<String>? models) => SliverList(
        delegate: SliverChildBuilderDelegate(
            (_, int index) => Padding(
                padding: const EdgeInsets.only(
                    bottom: 10, top: 2, left: 10, right: 10),
                child: InkWell(
                    onTap: () => _toDetailPage(models![index]),
                    child: Text(models![index]))),
            childCount: models?.length),
      );

  void _toDetailPage(String model) {}
}
