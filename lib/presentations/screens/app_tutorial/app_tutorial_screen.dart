import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final slides = <Slideinfo>[
  Slideinfo(
      'Busca la comida',
      'Proident eiusmod reprehenderit proident dolore ut dolore labore nostrud id enim.',
      'assets/images/1.png'),
  Slideinfo(
      'Entrega rapida',
      'Occaecat Lorem aliqua esse ad aliquip occaecat labore ipsum qui dolore veniam adipisicing adipisicing.',
      'assets/images/2.png'),
  Slideinfo(
      'Disfruta la comnida',
      'Cupidatat sit ad minim culpa dolor id ut in sit pariatur sit nostrud aliquip in.',
      'assets/images/3.png'),
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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
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
          Positioned(
            right: 10,
            top: 50,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: () => context.pop(),
            ),
          )
        ],
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
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageURL),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(title),
            const SizedBox(
              height: 10,
            ),
            Text(caption),
          ],
        ),
      ),
    );
  }
}
