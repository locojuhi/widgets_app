import 'package:flutter/material.dart';

final slides = <Slideinfo>[
  Slideinfo(
      'Busca la comida',
      'Proident eiusmod reprehenderit proident dolore ut dolore labore nostrud id enim.',
      'assets/image/1.png'),
  Slideinfo(
      'Entrega rapida',
      'Occaecat Lorem aliqua esse ad aliquip occaecat labore ipsum qui dolore veniam adipisicing adipisicing.',
      'assets/image/2.png'),
  Slideinfo(
      'Disfruta la comnida',
      'Cupidatat sit ad minim culpa dolor id ut in sit pariatur sit nostrud aliquip in.',
      'assets/image/3.png'),
];

class Slideinfo {
  final String title;
  final String caption;
  final String imageURL;

  Slideinfo(this.title, this.caption, this.imageURL);
}

class AppTutorialScreen extends StatelessWidget {
  static const String routeName = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map(
              (slideData) => _Slide(
                  title: slideData.title,
                  caption: slideData.caption,
                  imageURL: slideData.imageURL),
            )
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageURL;

  const _Slide(
      {super.key,
      required this.title,
      required this.caption,
      required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
