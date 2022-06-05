import 'package:flutter/material.dart';
import 'package:flutter_applazyload/resources/resources.dart';

class Movie {
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
        imageName: AppImages.bear,
        title: 'Smertelniaja bitva',
        time: 'April 7, 2022',
        description:
            'I have never seen this fucking movie about these bastards.'),
    Movie(
        imageName: AppImages.bear,
        title: 'Smertelniaja bitva',
        time: 'April 7, 2022',
        description:
            'I have never seen this fucking movie about these bastards.'),
    Movie(
        imageName: AppImages.bear,
        title: 'Smertelniaja bitva',
        time: 'April 7, 2022',
        description:
            'I have never seen this fucking movie about these bastards.'),
    Movie(
        imageName: AppImages.bear,
        title: 'Smertelniaja bitva',
        time: 'April 7, 2022',
        description:
            'I have never seen this fucking movie about these bastards.'),
    Movie(
        imageName: AppImages.bear,
        title: 'Smertelniaja bitva',
        time: 'April 7, 2022',
        description:
            'I have never seen this fucking movie about these bastards.'),
    Movie(
        imageName: AppImages.bear,
        title: 'Fuck',
        time: 'April 7, 2022',
        description:
            'I have never seen this fucking movie about these bastards.'),
    Movie(
        imageName: AppImages.bear,
        title: 'Smertelniaja bitva',
        time: 'April 7, 2022',
        description:
            'I have never seen this fucking movie about these bastards.'),
    Movie(
        imageName: AppImages.bear,
        title: 'Smertelniaja bitva',
        time: 'April 7, 2022',
        description:
            'I have never seen this fucking movie about these bastards.'),
  ];

  var _filterMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filterMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filterMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filterMovies = _movies;

    _searchController.addListener(_searchMovies);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filterMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filterMovies[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image(image: AssetImage(movie.imageName)),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie.title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                movie.title,
                                style: TextStyle(color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie.description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        print('11');
                      },
                    ),
                  )
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Search',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
