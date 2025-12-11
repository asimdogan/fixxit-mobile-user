import 'package:fixxit_mobile/widgets/appbar.dart';
import 'package:flutter/material.dart';

class FixxitHome extends StatelessWidget {
  const FixxitHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar()
    );
  }
}