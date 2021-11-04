import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sub_pemula_movie/detail_screen.dart';
import 'package:sub_pemula_movie/model/film.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF3e150f), Colors.black],
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('My List'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF3e150f), Colors.black],
          ),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final Film film = filmList[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailMovies(film: film);
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Stack(
                    children: [
                      Image.network(
                        film.gambarBackdrop,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black.withOpacity(0.4),
                          ),
                          child: Text(
                            film.judul,
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: filmList.length,
        ),
      ),
    );
  }
}
