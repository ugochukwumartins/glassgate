import 'package:biawazo/VendorHomePage/tab_item.dart';
import 'package:flutter/material.dart';

import 'CupatinoHomeScalfold.dart';

class HomeVendor extends StatefulWidget {
  const HomeVendor({Key key}) : super(key: key);

  @override
  _StateHomeVendor createState() => _StateHomeVendor();
}

class _StateHomeVendor extends State<HomeVendor> {
  Tabitem _current = Tabitem.Job;
  void _select(Tabitem value) {
    setState(() {
      _current = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupatinoHomeScaffold(
      current: _current,
      onSelected: _select,
    );
  }
}
