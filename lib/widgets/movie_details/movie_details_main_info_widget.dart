import 'package:flutter/material.dart';
import 'package:flutter_applazyload/resources/resources.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPosterWidget(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _MovieNameWidget(),
        ),
        _ScoreWidget(),
        SummeryWidget(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _DescriptionWidget(),
        ),
        SizedBox(height: 30),
        _PeopleWidgets(),
      ],
    );
  }

  Text _DescriptionWidget() {
    return Text(
        'An elite navy Seal uncovers an international conspiracy while seeking justice for the murder of his pregnant wife.',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600));
  }

  Text _OverviewWidget() {
    return Text('Overview',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600));
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
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Tom Clance Wiss Remoten',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        TextSpan(
          text: ' (2021)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
            onPressed: (() {}),
            child: Row(
              children: [
                Icon(Icons.rotate_90_degrees_ccw_rounded),
                Text('User Score'),
              ],
            )),
        Container(
          width: 1,
          height: 15,
          color: Colors.grey,
        ),
        TextButton(
            onPressed: (() {}),
            child: Row(
              children: [
                Icon(Icons.play_arrow),
                Text('Play Trayler'),
              ],
            )),
      ],
    );
  }
}

class SummeryWidget extends StatelessWidget {
  const SummeryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        child: Text('R, 04/29/2022 (US) Action, 149 min, Adventure, War',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}

class _PeopleWidgets extends StatelessWidget {
  const _PeopleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);
    final jobTitleStyle = TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stefano sollino', style: nameStyle),
                Text('Director', style: jobTitleStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stefandno', style: nameStyle),
                Text('Direk', style: jobTitleStyle)
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stefano sollino', style: nameStyle),
                Text('Director', style: jobTitleStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Stefandno', style: nameStyle),
                Text('Direk', style: jobTitleStyle)
              ],
            )
          ],
        )
      ],
    );
  }
}
