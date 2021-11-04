import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sub_pemula_movie/detail_screen.dart';
import 'package:sub_pemula_movie/list_screen.dart';
import 'package:sub_pemula_movie/model/film.dart';
import 'package:sub_pemula_movie/profil_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF3e150f), Colors.black],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SafeArea(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'My List',
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ListScreen();
                      }));
                    },
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Film',
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Colors.red),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Author',
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ProfilScreen();
                      }));
                    },
                  ),
                ]),
              ),
              Container(
                padding: EdgeInsets.all(24.0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Cooming Soon',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: filmList
                      .map(
                        (item) => InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailMovies(film: item);
                            }));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.network(item.gambarBackdrop, fit: BoxFit.cover, width: 1000.0),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                      child: Text(
                                        item.judul,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
                        padding: EdgeInsets.all(12),
                        child: Text('All', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
                        padding: EdgeInsets.all(12),
                        child: Text('Action', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
                        padding: EdgeInsets.all(12),
                        child: Text('Comedy', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
                        padding: EdgeInsets.all(12),
                        child: Text('Romance', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
                        padding: EdgeInsets.all(12),
                        child: Text('Fantasy', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
                        padding: EdgeInsets.all(12),
                        child: Text('Sc-Fi', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
                        padding: EdgeInsets.all(12),
                        child: Text('Horror', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(24.0),
                alignment: Alignment.topLeft,
                child: Text(
                  'Trending Now',
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    children: <Widget>[
                      CarouselSlider(
                        items: filmList
                            .map(
                              (item) => InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return DetailMovies(film: item);
                                  }));
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    child: Stack(
                                      children: <Widget>[
                                        Image.network(
                                          item.gambarPoster,
                                          fit: BoxFit.cover,
                                          width: 1000.0,
                                        ),
                                        Positioned(
                                          bottom: 0.0,
                                          left: 0.0,
                                          right: 0.0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                              ),
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0),
                                                  child: Text(
                                                    item.judul,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
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
                                                        child: Text(item.genre, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(10),
                                                          color: Colors.grey.withOpacity(0.3),
                                                        )),
                                                    Container(
                                                        margin: EdgeInsets.only(left: 6.0, bottom: 12.0, top: 12.0),
                                                        padding: EdgeInsets.all(12),
                                                        child: Text('⭐ ${item.skor}', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white)),
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(10),
                                                          color: Colors.grey.withOpacity(0.3),
                                                        )),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                        options: CarouselOptions(enlargeCenterPage: true, height: 500),
                        carouselController: _controller,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
