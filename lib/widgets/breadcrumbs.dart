import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Breadcrumbs extends StatelessWidget {
  const Breadcrumbs({super.key});

  @override
  Widget build(BuildContext context) {
    final route = GoRouterState.of(context).matchedLocation;
    final List<String> segments = route.split('/').where((e) => e.isNotEmpty).toList();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(Icons.home, color: Colors.grey),
          ...segments.asMap().entries.map((entry) {
            final int idx = entry.key;
            final String segment = entry.value;

            return Row(
              children: [
                const Icon(Icons.chevron_right, color: Colors.grey),
                GestureDetector(
                  onTap: () {
                    final path = '/' + segments.sublist(0, idx + 1).join('/');
                    context.go(path);
                  },
                  child: Text(
                    segment.capitalize(),
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}

extension StringCapitalization on String {
  String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
}



