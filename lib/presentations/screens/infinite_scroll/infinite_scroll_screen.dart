import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {
  static const String routeName = 'infinite_scroll_screen';
  const InfiniteScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return const FadeInImage(
          fit: BoxFit.cover,
          width: double.infinity,
          height: 300,
          placeholder: AssetImage('assets/images/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/id/237/500/300'),
        );
      }),
    );
  }
}
