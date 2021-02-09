import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:paper/core/hooks/zefyr_hook.dart';
import 'package:paper/utils/styles.dart';

class EditorScreen extends HookWidget {
  final String previousTitle;
  const EditorScreen({@required this.previousTitle});

  @override
  Widget build(BuildContext context) {
    final _editor = useZefyr(context);

    return CupertinoPageScaffold(
      backgroundColor: Colors.grey[50],
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: this.previousTitle,
        trailing: SizedBox(
          width: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                icon: Icon(CupertinoIcons.ellipsis_circle, size: 24),
                onPressed: () => print("//TODO: More"),
              ),
              Text(
                "Done",
                style: CupertinoTheme.of(context).textTheme.actionTextStyle,
              )
            ],
          ),
        ),
      ),
      child: Container(child: _editor),
    );
  }
}
