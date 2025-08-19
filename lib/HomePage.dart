import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final PageController _controller = PageController();

  List <String> _offerCarousel = [
    "lib/assets/images/OfferCarousel.png",
    "lib/assets/images/OfferCarousel.png",
    "lib/assets/images/OfferCarousel.png"
  ];

  List <Widget> _carousel = [
    Image.asset('lib/assets/images/LivingRoom.png'),
    Image.asset('lib/assets/images/Bedroom.png'),
    Image.asset('lib/assets/images/DiningRoom.png'),
    Image.asset('lib/assets/images/Kitchen.png'),
    Image.asset('lib/assets/images/Office.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Hi, Welcome Back', style: TextStyle(color: Color(0xFFF4B5A4), fontSize: 18, fontWeight: FontWeight.w900)),
                subtitle: Text('Create spaces that bring joy'),
                trailing: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4B5A4),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.search, size: 25)),
              ),
              SizedBox(height: 16),
              Container(
                height: 140,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: _offerCarousel.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      _offerCarousel[index],
                      fit: BoxFit.contain,);
                    },
                  // PageController _controller = PageController(),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: _offerCarousel.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 14,
                    activeDotColor: Color(0xFFF4B5A4),
                  ),
                  onDotClicked: (index){
                    _controller.animateToPage(index,
                    duration: Duration(milliseconds: 250),
                    curve: Curves.ease);
                  },
                ),
              ),
              SizedBox(height: 18),
              Text('Categories', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFCC7861))),
              Container(
                padding: EdgeInsets.zero,
                height: 100,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: _carousel.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return _carousel[index];
                  },
                ),
              ),
              Text('Best Seller', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFFCC7861))),
              SizedBox(height: 30),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 145,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD6C9),
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kitchen Cart', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500), ),
                          Text('Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100)),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(18, 20)
                                ),
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow, size: 18),
                                    Text('4.5', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(20, 18)
                                  ),
                                  onPressed: (){},
                                  child: Text('Shop Now', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300)),
                                ),
                              )
                            ],
                          )
                        ]
                      ),
                    )
                  ), 
                  Positioned(
                    right: 10,
                    top: -20,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('lib/assets/images/KitchenCart.png'),
                    )
                  )
                ]
              )
            ]
          )
        ),
    );
  }
}
