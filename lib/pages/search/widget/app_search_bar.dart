import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({Key? key}) : super(key: key);

  @override
  _AppSearchBarState createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  final TextEditingController _controller = TextEditingController(); //文本控制器

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        SizedBox(
            height: 35,
            child: TextField(
              autofocus: true,
              controller: _controller,
              maxLines: 1,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: "请输入...",
                  hintStyle: TextStyle(fontSize: 14)),
              onChanged: _doSearch,
              onSubmitted: (str) {
                //提交后,收起键盘
                FocusScope.of(context).requestFocus(FocusNode());
              },
            )),
        _buildClearIcon()
      ],
    );
  }

  void _doSearch(String str) {

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildClearIcon() {
    return ValueListenableBuilder<TextEditingValue>(
        valueListenable: _controller,
        builder: (_, TextEditingValue value, __) => value.text.isNotEmpty
            ? GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  _controller.clear();
                  _doSearch('');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
                  child: Icon(
                    CupertinoIcons.clear_circled,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              )
            : const SizedBox.shrink());
  }
}
