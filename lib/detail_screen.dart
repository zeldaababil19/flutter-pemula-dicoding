import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:share/share.dart';
import 'package:sub_pemula_movie/model/film.dart';

class DetailMovies extends StatefulWidget {
  final Film film;
  DetailMovies({required this.film});

  @override
  State<DetailMovies> createState() => _DetailMoviesState(film: film);
}

class _DetailMoviesState extends State<DetailMovies> {
  bool isFavorite = false;
  final Film film;
  _DetailMoviesState({required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF3e150f), Colors.black],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ShaderMask(
                    shaderCallback: (rectangle) {
                      return LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                      ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image(
                      width: 500,
                      image: NetworkImage(film.gambarPoster),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 28.0, bottom: 12.0, top: 12.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        film.tglRilis,
                        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 28.0, bottom: 12.0, top: 12.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        film.status,
                        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 12.0, right: 6.0, bottom: 12.0, top: 12.0),
                            padding: EdgeInsets.all(12),
                            child: Text('18+', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.3),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 6.0, right: 6.0, bottom: 12.0, top: 12.0),
                              padding: EdgeInsets.all(12),
                              child: Text(film.genre, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.3),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 6.0, bottom: 12.0, top: 12.0),
                              padding: EdgeInsets.all(12),
                              child: Text('⭐ ${film.skor}', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.3),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: IconButton(
                              icon: Icon(
                                isFavorite ? Icons.favorite : Icons.favorite_border,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  isFavorite = !isFavorite;
                                });
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 12.0, bottom: 12.0, top: 12.0),
                            padding: EdgeInsets.all(12),
                            child: IconButton(
                              icon: Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                _onShare(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        left: 6.0,
                        right: 6.0,
                      ),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        film.judul,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(
                      left: 6.0,
                      right: 6.0,
                    ),
                    padding: EdgeInsets.all(12),
                    child: ExpandableText(film.deskripsi,
                        collapseText: 'Less',
                        expandText: 'More',
                        maxLines: 3,
                        linkColor: Colors.red,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                  ),
                  Container(
                    child: Container(
                        margin: EdgeInsets.only(
                          left: 6.0,
                          right: 6.0,
                          top: 6.0,
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Actors",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.only(bottom: 18.0),
                    margin: EdgeInsets.only(left: 12.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: film.imageUrls.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(url),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              title: Text(''), // You can add title here
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                // onPressed: () {},
                onPressed: () => Navigator.of(context).pop(),
              ),
              backgroundColor: Colors.transparent, //You can make this transparent
              elevation: 0.0, //No shadow
            ),
          ),
        ],
      ),
    );
  }

  _onShare(BuildContext context) async {
    await Share.share(film.judul);
  }
}
