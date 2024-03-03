import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/dataUpdate.dart';
import 'package:provider_demo/page2.dart';

class Home extends StatelessWidget {
  String fixedData = 'fixedData';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(fixedData),
            Consumer<DataUpdate>(
              builder: (context, dModel, child) {
                return Text(dModel.data);
              },
            ),
            Consumer<DataUpdate>(
              builder: (context, dModel, child) {
                return ElevatedButton.icon(
                  onPressed: () {
                    fixedData = 'newData';
                    dModel.dataUpdate("newData");
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text("Update"),
                );
              },
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Page2()));
              },
              icon: const Icon(Icons.navigate_next),
              label: const Text("Page 2"),
            )
          ],
        ),
      ),
    );
  }
}
