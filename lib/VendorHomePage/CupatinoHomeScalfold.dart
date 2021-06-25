import 'package:biawazo/VendorHomePage/tab_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupatinoHomeScaffold extends StatelessWidget {
  const CupatinoHomeScaffold(
      {Key key, @required this.current, @required this.onSelected})
      : super(key: key);
  final Tabitem current;
  final ValueChanged<Tabitem> onSelected;
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          _buildItem(Tabitem.Job),
          _buildItem(Tabitem.Entry),
          _buildItem(Tabitem.Account),
        ],
        onTap: (index) => onSelected(Tabitem.values[index]),
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return Container();
          },
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(Tabitem tabitem) {
    final itemdata = TabItemData.alltabs[tabitem];
    final colors = current == tabitem ? Colors.indigo : Colors.grey;
    return BottomNavigationBarItem(
      icon: Icon(
        itemdata.icon,
        color: colors,
      ),
      title: Text(
        itemdata.title,
        style: TextStyle(
          color: colors,
        ),
      ),
    );
  }
}
