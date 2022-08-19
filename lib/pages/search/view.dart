import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:music/model/music_info.dart';
import 'package:music/pages/search/widget/app_search_bar.dart';
import 'package:music/utils/router.dart';

import 'logic.dart';

class SearchPage extends StatelessWidget {
  final logic = Get.put(SearchLogic());
  final state = Get.find<SearchLogic>().state;

  SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchLogic>(builder: (logic) {
      return Scaffold(
        body: EasyRefresh(
          controller: state.refreshController,
          header: PhoenixHeader(
            skyColor: Get.theme.primaryColor,
            position: IndicatorPosition.locator,
            safeArea: false,
          ),
          footer: PhoenixFooter(
            skyColor: Get.theme.primaryColor,
            position: IndicatorPosition.locator,
          ),
          onRefresh: () async {
            print('下拉刷新...');
            logic.onRefresh();
          },
          onLoad: () async {
            print('下拉刷新...');
            logic.onLoadMore();
          },
          child: CustomScrollView(
            slivers: <Widget>[
              _buildSliverAppBar(),
              _showDropMenu(logic, context),
              _buildMusicList(logic),
            ],
          ),
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

  Widget _buildMusicList(SearchLogic logic) => SliverList(
        delegate: SliverChildBuilderDelegate(
            (_, int index) => Visibility(
                  visible: logic.state.showResultView,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10, top: 2, left: 10, right: 10),
                    child: InkWell(
                      onTap: () => _toDetailPage(logic.state.kwMusic[index]),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 12),
                              child: Text(
                                "$index",
                                style: Get.theme.textTheme.displayMedium,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    child: Text(
                                  logic.state.kwMusic[index].name,
                                  style: Get.theme.textTheme.displayMedium,
                                )),
                                Container(
                                    child: Text(
                                  logic.state.kwMusic[index].singer ?? "",
                                  style: Get.theme.textTheme.displaySmall,
                                ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            childCount: logic.state.kwMusic.length),
      );

  void _doSearch(String key) {
    logic.searchMusic(key, 1, 20);
  }

  void _toDetailPage(MusicInfo musicInfo) {
    logic.getLyric(musicInfo.songId);
  }

  Widget _showDropMenu(SearchLogic logic, BuildContext context) {
    List<String>? musics = logic.state.kwTips?.getData();
    return SliverToBoxAdapter(
      child: Visibility(
        visible: !logic.state.showResultView,
        child: AnimatedContainer(
          padding: MediaQuery.of(context).viewInsets,
          duration: const Duration(milliseconds: 300),
          child: Scrollbar(
              child: ListView.builder(
                  itemCount: musics?.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        _doSearch(musics![index]);
                      },
                      child: Container(
                        child: Text(musics![index]),
                      ),
                    );
                  })),
        ),
      ),
    );
  }
}
