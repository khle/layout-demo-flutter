import 'package:flutter/material.dart';
import 'package:layout_demo_flutter/layout_attribute_selector.dart';

class StackLayoutAttributes extends StatelessWidget {
  StackLayoutAttributes({this.onUpdateAlignment});
  final ValueChanged<int> onUpdateAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex: 1,
              child: Column(children: <Widget>[
                LayoutAttributeSelector(
                  title: 'Alignment',
                  values: [
                    'topStart', 'topCenter', 'topEnd',
                    'centerStart', 'center', 'centerEnd',
                    'bottomStart', 'bottomCenter', 'bottomEnd',
                  ],
                  onChange: onUpdateAlignment,
                ),
                LayoutAttributeSelector(
                  title: 'Main Axis Size',
                  values: ['min', 'max'],
                  onChange: (index) { },
                ),
              ])),
        ]);
  }
}

