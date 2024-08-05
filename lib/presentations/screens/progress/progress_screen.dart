import 'package:flutter/material.dart';


class ProgressScreen extends StatelessWidget {
  static const String routeName = 'progress_screen';
  const ProgressScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox( height: 30,),
          Text('Circular progress indicator'),
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black45,),
          SizedBox( height: 30,),
          Text('Progress indicator controlado'),
          _ControllerProgressIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
