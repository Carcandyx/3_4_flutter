import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_container.dart';
import '../widgets/custom_row.dart';
import '../widgets/custom_column.dart';
import '../widgets/custom_stack.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomColumn(
        children: [
          const CustomText(
            text: 'CustomText Widget',
          ),
          const CustomContainer(
            child: CustomText(
              text: 'CustomContainer with CustomText',
            ),
          ),
          CustomRow(
            children: [
              Expanded(child: Container(height: 50, color: Colors.red)),
              Expanded(child: Container(height: 50, color: Colors.green)),
              Expanded(child: Container(height: 50, color: Colors.blue)),
            ],
          ),
          CustomStack(
            children: [
              Container(width: 200, height: 200, color: Colors.red),
              Container(width: 150, height: 150, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.blue),
              const CustomText(
                text: 'CustomStack',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
