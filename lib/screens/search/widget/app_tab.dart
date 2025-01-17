import 'package:flutter/material.dart';

class AppTab extends StatelessWidget {
  const AppTab({super.key, required this.tabName, this.tabBorder = false, this.tabColor = false});
  final String tabName;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
          color: tabColor ==false?Colors.white:Colors.transparent,
          borderRadius: tabBorder
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(
        child: Text(tabName),
      ),
    );
  }
}
