import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/dataUpdate.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 2")),
      body: Center(
        child: Consumer<DataUpdate>(
          builder: (context, dModel, child) {
            return Text(dModel.data);
          },
        ),
      ),
    );
    ;
  }
}
