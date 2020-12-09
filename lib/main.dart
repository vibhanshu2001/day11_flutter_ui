import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_day11/components/list_item.dart';

import 'components/slider_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //I have pasted some image links. You may go to link given in the description for the source code.
  List<String> movieCarousselUrl = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRbSLCEqIGEAzHkwd7SWUpIuJ4knEYcBx-wxg&usqp=CAU",
    "https://uhdwallpapers.org/uploads/converted/19/09/21/joker-4k-poster-1600x900_666674-mm-90.jpg",
    "https://financerewind.com/wp-content/uploads/2020/07/cursed-season-2-netflix-renewal-status-1200x675.png",
    "https://miro.medium.com/max/2800/0*6dysw-Riawp4PO6u",
  ];
  List<String> movieTitle = [
    "Star Wars the Jedi Return",
    "JOKER",
    "Cursed",
    "Kimetsu no yaiba : Mugen Train"
  ];
  List<String> movieImageUrl = [
    "https://lumiere-a.akamaihd.net/v1/images/p_mulan2020_20204_b005decc.jpeg?region=0,0,540,810",
    "https://upload.wikimedia.org/wikipedia/en/2/21/Kimetsu_no_Yaiba_Mugen_Ressha_Hen_Poster.jpg",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSa4t8Yz7dxTAWBZtbNhmpEYepiV_Yw8KMRf69NyjtPqbPm-LPr",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROKKn9ftbhxcRQf0NSSW4YfXPex6eyY95FrhEfU7OoTiDYRpky",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTkZO-tgLmMFndFVdrFSetlssgOYf4M_i1kSfZ62vJRuBCtShRc",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        centerTitle: true,
        title: Text(
          'Netflix',
          style: TextStyle(
            color: Colors.red
          ),
        ),

        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Recent Movies and Series',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 12,),
              CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  aspectRatio: 16/9,
                  viewportFraction: 0.9,
                  height: 280,
                  enlargeCenterPage: true,
                ),
                items: [
                  sliderItem(movieCarousselUrl[0], movieTitle[0]),
                  sliderItem(movieCarousselUrl[1], movieTitle[1]),
                  sliderItem(movieCarousselUrl[2], movieTitle[2]),
                  sliderItem(movieCarousselUrl[3], movieTitle[3]),
                ],
              ),
              Text(
                'Recommendation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 360,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listItem(movieImageUrl[0], 'Mulan'),
                    SizedBox(width: 10,),
                    listItem(movieImageUrl[1], 'Demon Slyaer Infinite Train'),
                    SizedBox(width: 10,),
                    listItem(movieImageUrl[2], 'Ragnarok'),
                    SizedBox(width: 10,),
                    listItem(movieImageUrl[3], 'The Letter for the King'),
                    SizedBox(width: 10,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xff212121),
            // ignore: deprecated_member_use
            title: Text('Home'),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
              title: Text('Downloaded'),
              icon: Icon(Icons.file_download)
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
              title: Text('Playlist'),
              icon: Icon(Icons.playlist_play)
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
              title: Text('Account'),
              icon: Icon(Icons.person)
          ),
        ],
      ),
    );
  }
}
