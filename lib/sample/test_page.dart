import 'package:const_widget_update_demo/sample/bottom_widget.dart';
import 'package:const_widget_update_demo/sample/test_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() {
  runApp(MaterialApp(
    home: TestPage(),
  ));
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TestChanger>(
      create: (ctx) {
        return TestChanger();
      },
      child: Consumer<TestChanger>(
        builder: (ctx, vm, child) {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  vm.doIncrease();
                },
                child: const Text("increase"),
              ),
            ),
            bottomNavigationBar: const TestBottomWidget(),
          );
        },
      ),
    );
  }
}
