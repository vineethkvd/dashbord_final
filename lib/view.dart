import 'package:flutter/material.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Dashboard Home', style: TextStyle(fontSize: 24)));
  }
}

class ProductAdd extends StatelessWidget {
  const ProductAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Addd', style: TextStyle(fontSize: 24)));
  }
}

class ProductDelete extends StatelessWidget {
  const ProductDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('delete', style: TextStyle(fontSize: 24)));
  }
}

class ProductUpdate extends StatelessWidget {
  const ProductUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('update', style: TextStyle(fontSize: 24)));
  }
}

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('view', style: TextStyle(fontSize: 24)));
  }
}


