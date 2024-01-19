import 'package:const_widget_update_demo/sample/test_changer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestBottomWidget extends StatelessWidget {
  const TestBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TestChanger vm = context.read<TestChanger>();
    return Container(
      height: 50,
      color: Colors.orange,
      child: Center(
        child: Text("count = ${vm.count.toString()}"),
      ),
    );
  }
}
