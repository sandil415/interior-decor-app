import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List <Widget> _pages = [
    OnBoardingTemplate(
      title: "Comfortable Space",
      imagePath: "lib/assets/images/OnBoarding1.png"
    ),
    OnBoardingTemplate(
      title: "Modern Design",
      imagePath: "lib/assets/images/OnBoarding2.png"
    ),
    OnBoardingTemplate(
      title: "Styled Living",
      imagePath: "lib/assets/images/OnBoarding3.png"
    ),
    OnBoardingTemplate(
      title: "Relaxing Furniture",
      imagePath: "lib/assets/images/OnBoarding4.png"
    ),
  ];

  void _skip() {
    _pageController.animateToPage(
      _pages.length - 1, 
      duration: Duration(milliseconds: 500),
      curve: Curves.ease
    );
  }

  void _onNext() {
    if(_currentIndex < _pages.length - 1){
      _pageController.nextPage(
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInOut
      );
    }
  else {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LogIn())
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) => _pages[index],
        ),
        _currentIndex == _pages.length - 1 ? SizedBox.shrink(): Positioned(
          top: 45,
          right: 40,
          child: GestureDetector(
          onTap: (){
            _skip();
          },
          child: Row(
           children: [
            Text(
              'Skip',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100)
            ),
            Icon(Icons.arrow_forward, size: 14)
          ],
          ),
                  )
                ),
          Positioned(
            bottom: 40,
            right: 20,
            child: TextButton(
              onPressed: _onNext,
              child: Text(
                _currentIndex == _pages.length - 1 ? "Get Started" : "Next"
              )
            )
          ),
          Positioned(
            bottom: 40,
            left: 20,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: _pages.length,
              effect: ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 14,
                activeDotColor: Color(0xFFF4B5A4),
              ),
              onDotClicked: (index){
                _pageController.animateToPage(index,
                duration: Duration(milliseconds: 250),
                curve: Curves.ease);
              },
            )
          )
        ]
      )
    );
  }
}

class OnBoardingTemplate extends StatelessWidget {
  final String title;
  final String imagePath;
  const OnBoardingTemplate({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(imagePath, height: 440, width: 390,),
                // Positioned(
                //   top: 45,
                //   right: 20,
                //   child: GestureDetector(
                //     onTap: (){
                //       print("Skip Tapped");
                //     },
                //     child: Row(
                //       children: [
                //         Text(
                //           'Skip',
                //           style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100)
                //         ),
                //         Icon(Icons.arrow_forward, size: 14)
                //       ],
                //     ),
                //   )
                // ),
              ],
            ),
            SizedBox(height: 80),
                Center(
                  child: Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20),
                Center(child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore \nmagna aliqua. ',
                style: TextStyle(fontSize: 14 ),
                textAlign: TextAlign.center,))
          ]
        )
      );
  }
}