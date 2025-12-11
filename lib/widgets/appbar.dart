import 'package:flutter/material.dart';
import 'package:fixxit_mobile/views/pages/settings_page.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: HSLColor.fromAHSL(1, 213, 0.15, 0.24).toColor(),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search, size: 30.0, color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications_outlined,
            size: 30.0,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsPage()),
            );
          },
        ),
      ],
      title: SizedBox(
        width: 80,
        height: 80,
        child: Image.asset('assets/images/111.png'),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
