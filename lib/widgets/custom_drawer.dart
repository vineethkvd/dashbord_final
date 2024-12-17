import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../provider/data_provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    final List<Map<String, String>> menuItems = [
      {'name': 'Dashboard', 'route': '/dashboard'},
      {'name': 'View', 'route': '/dashboard/view'},
      {'name': 'Add', 'route': '/dashboard/add'},
      {'name': 'Update', 'route': '/dashboard/update'},
      {'name': 'Delete', 'route': '/dashboard/delete'},
    ];

    return Container(
      width: 250,
      color: Colors.blueGrey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          ...menuItems.map((item) {
            bool isSelected = drawerProvider.selectedItem == item['name'];
            return ListTile(
              title: Text(
                item['name']!,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.grey[400],
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              tileColor: isSelected ? Colors.blue : null,
              onTap: () {
                drawerProvider.setSelectedItem(item['name']!);
                context.go(item['route']!);
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
