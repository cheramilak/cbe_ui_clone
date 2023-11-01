import 'package:cbe_mobile/model/model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final offerPagesController =
      PageController(viewportFraction: 0.93, keepPage: true, initialPage: 1);
  final reviewPagesController =
      PageController(viewportFraction: 0.93, keepPage: true, initialPage: 1);
  final slider = [Slider1(), Slider1(), Slider1()];

  @override
  Widget build(BuildContext context) {
    late List<graideModel> gridList = [
      graideModel(
          icon: Icon(Icons.transform, color: Colors.purple, size: 40),
          title: 'Transform'),
      graideModel(
          icon: Icon(
            Icons.people,
            color: Colors.purple,
            size: 40,
          ),
          title: 'People'),
      graideModel(
          icon: Icon(Icons.water_drop_outlined, color: Colors.purple, size: 40),
          title: 'Utilities'),
      graideModel(
          icon:
              Icon(Icons.phone_android_rounded, color: Colors.purple, size: 40),
          title: 'Top Up'),
      graideModel(
          icon: Icon(Icons.folder, color: Colors.purple, size: 40),
          title: 'Other'),
      graideModel(
          icon: Icon(Icons.bar_chart, color: Colors.purple, size: 40),
          title: 'Finance'),
      graideModel(
          icon: Icon(Icons.bar_chart, color: Colors.purple, size: 40),
          title: 'Finance')
    ];
    return Container(
      color: Colors.white60,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 220,
              child: PageView.builder(
                controller: offerPagesController,
                itemCount: slider.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: slider[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: offerPagesController,
                effect: ScaleEffect(
                  dotHeight: 7,
                  dotWidth: 7,
                  activeDotColor: Colors.purple,
                  dotColor: Colors.grey.withOpacity(0.2),
                ),
                count: 2,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: gridList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 1.8,
                      childAspectRatio: 1.9),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Card(
                        elevation: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            gridList[index].icon,
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              gridList[index].title,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class Slider1 extends StatefulWidget {
  const Slider1({Key? key}) : super(key: key);

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  bool isTab = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/world_map.png',
              ),
              fit: BoxFit.cover),
          color: Colors.black87),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/cbe.png'),
                height: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Commercial Bank Of Ethiopia',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent,
                        fontSize: 21),
                  ),
                  Text(
                    'The Bank You can always Relay on',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
          Text(
            'Balance',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isTab == true ? '1357' : '*****',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                  ),
                ),
                Text(
                  ' Br.',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (isTab) {
                          isTab = false;
                        } else {
                          isTab = true;
                        }
                      });
                    },
                    icon: Icon(
                      isTab == true
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                      color: Colors.white,
                    ))
              ]),
          Text(
            'Saving 1000****',
            style: TextStyle(color: Colors.yellowAccent),
          ),
          Text(
            'May 7,2023',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
