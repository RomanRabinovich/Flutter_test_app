import 'package:flutter/material.dart';
import 'package:flutter_applazyload/resources/resources.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _TopPosterWidget(),
        _MovieNameWidget(),
      ],
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage(AppImages.topHeader)),
        Positioned(
            top: 20,
            left: 20,
            bottom: 20,
            child: Image(image: AssetImage(AppImages.topHeaderSubImage))),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      text: TextSpan(children: [
        TextSpan(
          text: 'Tom Clance Wiltonos Remoten',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
        ),
        TextSpan(
          text: ' (2021)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }
}
