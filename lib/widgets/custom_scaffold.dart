import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  CustomScaffold({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          body,
          Card(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Text(
                    'N',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ),
            shape: BeveledRectangleBorder(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(16))),
            margin: EdgeInsets.all(0),
          )
        ],
      )),
    );
  }
}
