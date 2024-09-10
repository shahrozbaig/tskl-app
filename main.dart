import 'package:flutter/material.dart';
import 'login.dart';
import 'package:video_player/video_player.dart';



void main() {
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // Set LoginPage as the initial screen
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
          },
          icon: Image.asset(
            'images/image.png', // Replace with your app icon asset
            width: 150, // Adjust size as needed
            height: 150,
          ),
          label: Text(
            '   Developed by wmp solution  ',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
          ),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.teal,
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomePage(),
    PackagesPage(),
    AboutUsPage(),
    ContactUsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
        'images/image.png', // Replace with your app icon asset
        width: 100, // Adjust size as needed
        height: 100,
      ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor:Colors.teal ,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact Us',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,  // Color of the selected item text/icon
        unselectedItemColor: Colors.teal, // Color of unselected items (optional)
        backgroundColor: Colors.teal, // Set the background color of the navigation bar to teal
        onTap: _onItemTapped,
      ),

    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton.icon(

        onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>PackagesPage()),
      );
      },
        icon: Image.asset(
          'images/image1.png',
          width: 80,
          height: 80,
        ),
        label: Text('(COURSES)' ,style: TextStyle( color:Colors.white,fontWeight: FontWeight.w900,fontSize: 10),),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),

          ),
          backgroundColor: Colors.teal,
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
              ),
            ),
      ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>ContactUsPage()),
                  );
                },
                icon: Image.asset(
                  'images/image3.png', // Replace with your app icon asset
                  width: 80, // Adjust size as needed
                  height: 80,
                ),
                label: Text('(CONTACTUS)' ,style: TextStyle( color:Colors.white,fontWeight: FontWeight.w700,fontSize: 10),),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.teal,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                )
            ),
    ElevatedButton.icon(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>AboutUsPage()),
    );
    },
    icon: Image.asset(
    'images/image2.png', // Replace with your app icon asset
    width: 80,
    height: 80,
    ),
    label: Text('(ABOUT US)' ,style: TextStyle( color:Colors.white,fontWeight: FontWeight.w800,fontSize: 10),),
    style: ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
    ),
    backgroundColor: Colors.teal,
    textStyle: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    )
    )
    ),
      ElevatedButton(
          onPressed: () {
            // Add your onPressed functionality here if needed
          },
          style: ElevatedButton.styleFrom(
          ),
          child: Text(
            'WMPSolution is a leading software and service provider. We specialize in e-commerce, website, and app development.',
            style: TextStyle(
              fontSize: 16.0, // Adjust font size as needed
              fontWeight: FontWeight.bold,color: Colors.teal
            ),
            textAlign: TextAlign.center,
          ),
      )
        ]
    ),
      )
    );

  }
}


class PackagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'OUR COURSES',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Discover and enroll in courses tailored to boost your learning and skills.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EcommercePage()),
                  );
                },
                child: Text('ECOMMERCE',style:TextStyle(color:Colors.teal)),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppDevelopmentpage ()),
                  );
                },
                child: Text('App Development', style:TextStyle(color:Colors.teal)),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebDevelopmentpage()),
                  );
                },
                child: Text('Web Development' , style:TextStyle(color:Colors.teal)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class AppDevelopmentpage extends StatefulWidget {
  @override
  _AppDevelopmentPageState createState() => _AppDevelopmentPageState();
}

class _AppDevelopmentPageState extends State<AppDevelopmentpage> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;
  bool _isPlaying1 = false;
  bool _isPlaying2 = false;
  bool _isPlaying3 = false;
  bool _isFullScreen1 = false;
  bool _isFullScreen2 = false;
  bool _isFullScreen3 = false;

  @override
  void initState() {
    super.initState();
    _controller1 = VideoPlayerController.asset('assets/videos/ecommerce.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller2 = VideoPlayerController.asset('assets/videos/ecommerce.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller3 = VideoPlayerController.asset('assets/videos/ecommerce.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  Widget _buildVideoPlayer(VideoPlayerController controller, bool isPlaying, bool isFullScreen, String lectureTitle) {
    return Column(
      children: [
        Text(
          lectureTitle,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        AspectRatio(
          aspectRatio: isFullScreen ? 16 / 9 : controller.value.aspectRatio,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              VideoPlayer(controller),
              VideoProgressIndicator(controller, allowScrubbing: true),
              Align(
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  onPressed: () {
                    setState(() {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                      isPlaying = !isPlaying;
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {
                    setState(() {
                      isFullScreen = !isFullScreen;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // Add space between video players
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce Course'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_controller1.value.isInitialized)
              _buildVideoPlayer(_controller1, _isPlaying1, _isFullScreen1, 'Lecture 1',),
            if (_controller2.value.isInitialized)
              _buildVideoPlayer(_controller2, _isPlaying2, _isFullScreen2, 'Lecture 2'),
            if (_controller3.value.isInitialized)
              _buildVideoPlayer(_controller3, _isPlaying3, _isFullScreen3, 'Lecture 3'),
          ],
        ),
      ),
    );
  }
}

class EcommercePage extends StatefulWidget {
  @override
  _EcommercePageState createState() => _EcommercePageState();
}

class _EcommercePageState extends State<EcommercePage> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;
  bool _isPlaying1 = false;
  bool _isPlaying2 = false;
  bool _isPlaying3 = false;
  bool _isFullScreen1 = false;
  bool _isFullScreen2 = false;
  bool _isFullScreen3 = false;

  @override
  void initState() {
    super.initState();
    _controller1 = VideoPlayerController.asset('assets/videos/ecommerce.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller2 = VideoPlayerController.asset('assets/videos/ecommerce.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller3 = VideoPlayerController.asset('assets/videos/ecommerce.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  Widget _buildVideoPlayer(VideoPlayerController controller, bool isPlaying, bool isFullScreen, String lectureTitle) {
    return Column(
      children: [
        Text(
          lectureTitle,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        AspectRatio(
          aspectRatio: isFullScreen ? 16 / 9 : controller.value.aspectRatio,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              VideoPlayer(controller),
              VideoProgressIndicator(controller, allowScrubbing: true),
              Align(
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  onPressed: () {
                    setState(() {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                      isPlaying = !isPlaying;
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {
                    setState(() {
                      isFullScreen = !isFullScreen;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // Add space between video players
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce Course'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_controller1.value.isInitialized)
              _buildVideoPlayer(_controller1, _isPlaying1, _isFullScreen1, 'Lecture 1',),
            if (_controller2.value.isInitialized)
              _buildVideoPlayer(_controller2, _isPlaying2, _isFullScreen2, 'Lecture 2'),
            if (_controller3.value.isInitialized)
              _buildVideoPlayer(_controller3, _isPlaying3, _isFullScreen3, 'Lecture 3'),
          ],
        ),
      ),
    );
  }
}
class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({required this.controller});

  static const _iconSize = 30.0;
  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 50),
          reverseDuration: Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? SizedBox.shrink()
              : Container(
            color: Colors.black26,
            child: Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: _iconSize,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
      ],
    );
  }
}
class WebDevelopmentpage extends StatefulWidget {
  @override
  _WebDevelopmentPageState createState() => _WebDevelopmentPageState();
}

class _WebDevelopmentPageState extends State<WebDevelopmentpage> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;
  bool _isPlaying1 = false;
  bool _isPlaying2 = false;
  bool _isPlaying3 = false;
  bool _isFullScreen1 = false;
  bool _isFullScreen2 = false;
  bool _isFullScreen3 = false;

  @override
  void initState() {
    super.initState();
    _controller1 = VideoPlayerController.asset('assets/videos/ecommerce.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller2 = VideoPlayerController.asset('assets/videos/ecommerce.mp4')
      ..initialize().then((_) {
        setState(() {});
      });

    _controller3 = VideoPlayerController.asset('assets/videos/ecommerce.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  Widget _buildVideoPlayer(VideoPlayerController controller, bool isPlaying, bool isFullScreen, String lectureTitle) {
    return Column(
      children: [
        Text(
          lectureTitle,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        AspectRatio(
          aspectRatio: isFullScreen ? 16 / 9 : controller.value.aspectRatio,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              VideoPlayer(controller),
              VideoProgressIndicator(controller, allowScrubbing: true),
              Align(
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  onPressed: () {
                    setState(() {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                      isPlaying = !isPlaying;
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {
                    setState(() {
                      isFullScreen = !isFullScreen;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // Add space between video players
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce Course'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_controller1.value.isInitialized)
              _buildVideoPlayer(_controller1, _isPlaying1, _isFullScreen1, 'Lecture 1',),
            if (_controller2.value.isInitialized)
              _buildVideoPlayer(_controller2, _isPlaying2, _isFullScreen2, 'Lecture 2'),
            if (_controller3.value.isInitialized)
              _buildVideoPlayer(_controller3, _isPlaying3, _isFullScreen3, 'Lecture 3'),
          ],
        ),
      ),
    );
  }
}


class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent, // Set the background color to green
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Set the text color to white
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to TSKL, your ultimate e-learning companion designed to make education accessible, engaging, and effective. Our mission is to bridge the gap between knowledge and practical application, offering a platform where learning meets convenience.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black), // Set the text color to white
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    color: Colors.tealAccent,
     child: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Have questions? Reach out to us!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>ContactEmailUs()),
                );
                // Add functionality to call or email
              },
              icon: Icon(Icons.phone_android, color: Colors.black,),
              label: Text('Call Us',style:TextStyle(color:Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>ContactEmailUs()),
                );
                // Add functionality to email
              },
              icon: Icon(Icons.email,color: Colors.black,),
              label: Text('Email Us',  style:TextStyle(color:Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
            ),
          ],
        ),
      ),
     )
    );
  }
}


class ContactEmailUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.teal, // Custom AppBar color
      ),
      backgroundColor: Colors.white, // White background color
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Contact Information',
              style: TextStyle(
                color: Colors.black, // Black text color
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            ContactDetailRow(
              icon: Icons.email,
              label: 'Email:',
              detail: 'info@wmpsolution.com',
            ),
            SizedBox(height: 10.0),
            ContactDetailRow(
              icon: Icons.location_on,
              label: 'Location:',
              detail: ' Office # mz08 1st floor, Future tower, Block C Commercial Area Jubilee Town, Lahore, Punjab 54000',
            ),
            SizedBox(height: 10.0),
            ContactDetailRow(
              icon: Icons.phone,
              label: 'Contact Number:',
              detail: '+92320 9490826',
            ),
            SizedBox(height: 10.0),
            ContactDetailRow(
              icon: Icons.web,
              label: 'Website:',
              detail: 'www.wmpsolution.com',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactDetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String detail;

  ContactDetailRow({required this.icon, required this.label, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.black, // Black icon color
          size: 30.0,
        ),
        SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.black, // Black text color
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              detail,
              style: TextStyle(
                color: Colors.black87, // Slightly lighter black for detail text
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}



