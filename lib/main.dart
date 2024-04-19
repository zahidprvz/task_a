import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Image(
              image: AssetImage(
                'images/task_a_image.jpg',
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onVerticalDragStart: (details) {
                            // Handle drag start event
                          },
                          onVerticalDragUpdate: (details) {
                            // Handle drag update event
                          },
                          onVerticalDragEnd: (details) {
                            // Handle drag end event
                          },
                          child: Container(
                            height: 40.0,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Center(
                              child: Container(
                                height: 2.0,
                                width: 50.0,
                                color: const Color.fromARGB(255, 187, 187, 187),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          print('Popular button pressed');
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            Colors.white,
                                          ),
                                        ),
                                        child: const Text(
                                          'Popular',
                                          style: TextStyle(
                                              color: Color(0xFF30ce84)),
                                        ),
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 10.0),
                                          child: Icon(
                                            Icons.location_on,
                                            color: Color(0xFF30ce84),
                                          ),
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Chocolate Cake',
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFF30ce84),
                                      ),
                                      Text(
                                        '4.5 Rating',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 187, 187, 187),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.shopping_bag,
                                          color: Color(0xFF30ce84)),
                                      Text(
                                        '100 + Orders',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 187, 187, 187),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Description:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'This delicious chocolate cake is made with the finest ingredients, including rich cocoa powder, creamy butter, and sweet sugar. Indulge in a slice of this decadent cake today!',
                                style: TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Benefits:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                '• Rich in antioxidants from cocoa powder\n'
                                '• Provides a boost of energy\n'
                                '• Improves mood and reduces stress\n',
                                style: TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 16),
                              const SizedBox(
                                  height:
                                      200), // Add space below the content for demonstration
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Add your button action here
                            print('Button pressed');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF30ce84)),
                          ),
                          child: const Text(
                            'Add To Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
