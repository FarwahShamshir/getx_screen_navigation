import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/screen2', page: () => Screen2()),
        GetPage(name: '/screen3', page: () => Screen3()),
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Travel Secret'),
        backgroundColor: Color(0xFFCA8787), // Updated color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          },
        ),
      ),
      body: Stack(
        children: [

          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'images/fff.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Main content
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Lottie.asset(
                'Animation - 1726217279917.json',  // First animation
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '"The world is a book, and those who do not travel read only one page."',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {

                    Get.toNamed('/screen2');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFCA8787),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text('Go to Screen 2', style: TextStyle(color: Colors.black)), // Text color to black
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Time Secret'),
        backgroundColor: Color(0xFFA87676), // Updated color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Stack(
        children: [

          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'images/fff.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Lottie.asset(
                'Animation - 1726216952017.json',  // Second animation
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '"The bad news is time flies. The good news is you\'re the pilot."',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,  // Text color to black
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {

                    Get.toNamed('/screen3');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFA87676),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text('Go to Screen 3', style: TextStyle(color: Colors.black)), // Text color to black
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Screen3 with Lottie animation, programming quote, and button to go back home
class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Programming Secret'),
        backgroundColor: Color(0xFFE1ACAC),  // Updated color
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Stack(
        children: [
          // Background Image with Low Opacity
          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'images/fff.jpg', // Background image path
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Main content
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Lottie Animation
              Lottie.asset(
                'Animation - 1726216517003.json',  // Third animation
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),
              // Programming Quote
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '"Programs must be written for people to read, and only incidentally for machines to execute."',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,  // Text color to black
                  ),
                ),
              ),
              // Button at the bottom to go back to Home
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Go back to Home screen
                    Get.offAllNamed('/');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE1ACAC),  // Updated button color
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text('Go Back Home', style: TextStyle(color: Colors.black)),  // Text color to black
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
