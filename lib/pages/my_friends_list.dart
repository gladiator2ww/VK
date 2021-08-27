import 'package:flutter_application_2/models/movie_model.dart';
import 'package:flutter_application_2/repository/movies_repository.dart';
import 'package:flutter_application_2/widgets/circle_image.dart';
import 'package:flutter/material.dart';

class MyFriendsList extends StatefulWidget {
  @override
  _MyFriendsListState createState() => _MyFriendsListState();
}

class _MyFriendsListState extends State<MyFriendsList> {
  late MoviesRepository _moviesRepository;
  @override
  void initState() {
    super.initState();
    _moviesRepository = MoviesRepository();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Друзья',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      body: Center(
        child: FutureBuilder<List<MovieModel>>(
          future: _moviesRepository.getAllMovies(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final item = snapshot.data![index];

                    return Column(
                      children: [
                        CircleImage(
                          size: 360,
                          rudius: 5,
                          imageUrl: item.image,
                        ),
                        Text(item.fullTitle),
                      ],
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),

      // child: Column(
      //   children: [
      //     CircleImage(
      //       size: 360,
      //       rudius: 5,
      //       imageUrl:
      //           'https://sun9-31.userapi.com/impf/c857436/v857436384/d7c5/JU6w-Tj0gPs.jpg?size=1280x852&quality=96&sign=731fd76a8a995ed0be7e84572cd3a22f&type=album',
      //     ),
      //     Text(''),
      //     Text(''),
      //   ],
      // ),

      bottomNavigationBar: BottomAppBar(),
    );
  }
}
