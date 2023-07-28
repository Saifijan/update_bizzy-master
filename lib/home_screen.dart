// import 'package:bizzyupdated/top_navigation_bar.dart';
// import 'package:bizzyupdated/utils/app_colors.dart';
// import 'package:bizzyupdated/utils/app_util.dart';
// import 'package:bizzyupdated/widgets/elevated_button_g.dart';
import 'package:bizzyupdated/Calculator_App.dart';
import 'package:bizzyupdated/CalendarApp.dart';
import 'package:bizzyupdated/screen_3.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'SignIn_Screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove default back button
        backgroundColor: Colors.white,
        actions: [
           Align(
            // alignment: Alignment.center,
            child: FractionalTranslation(
              translation: const Offset(-0.8, 0.0), // Adjust the Offset values for desired positioning
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.1,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CalendarApp(),
                          ),
                        );
                      },
                      icon: Image.asset('assets/images/calender.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        title: Align(
          alignment: Alignment.center,
          child: FractionalTranslation(
            translation: const Offset(-0.0, 0.0), // Adjust the Offset values for desired positioning
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 1.1,
                  child: IconButton(
                    onPressed: () {
                      // Handle center icon button tap
                    },
                    icon: Image.asset('assets/images/time.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
        leading: Align(
          alignment: Alignment.center,
          child: FractionalTranslation(
            translation: const Offset(0.5, 0.0), // Adjust the Offset values for desired positioning
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 1.7,
                  child: IconButton(

                    onPressed: () {
                      // Handle center icon button tap
                    },
                    icon: Image.asset('assets/images/profile.png'),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
             child : Stack(
              children: [
                Image.asset(
                  'assets/images/back2.png',
                  fit: BoxFit.cover,

                  // Adjust other properties of the Image widget as needed
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: IconButton(
                        icon: Image.asset('assets/images/todo1.png'),
                        onPressed: () {

                        },

                      ),
                    ),
                    Transform.scale(
                      scale: 0.8,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const screen_3(),
                            ),
                          );
                        },
                        icon: Image.asset('assets/images/camera.png'),
                      ),
                    ),
                    Transform.scale(
                      scale: 0.9,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Calculator_App(),
                            ),
                          );
                        },
                        icon: Image.asset('assets/images/play.png'),
                      ),
                    ),
                 ],
                ),
              ],
            ),
          ),
          Expanded(
            child: FractionalTranslation(
              translation: const Offset(-0.0, -0.25),
              child: Image.asset(
                'assets/images/home_demo.jpg', // Replace with your image asset path
                width: 350, // Adjust the width as needed
                height: 200,

            ),
          ),
          ),
      ]
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.scale(
              scale: 0.8,
              child: IconButton(
                onPressed: (){},
                icon: Image.asset('assets/images/home.png'),
              ),
            ),
            Transform.scale(
              scale: 0.8,
              child: IconButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Calculator_App(),
                    ),
                  );
                },
                icon: Image.asset('assets/images/search.png'),
              ),
            ),
            Transform.scale(
              scale: 1.2,
              child: IconButton(
                onPressed: (){
                },
                icon: Image.asset('assets/images/gym.png'),
              ),
            ),
            Transform.scale(
              scale: 0.7,
              child: IconButton(
                onPressed: (){

                },
                icon: Image.asset('assets/images/restaurant.png'),
              ),
            ),
            Transform.scale(
              scale: 0.7,
              child: IconButton(
                onPressed: (){},
                icon: Image.asset('assets/images/dollar sign.png'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle floating action button tap
        },
        elevation: 0,
        backgroundColor: Colors.transparent,
        highlightElevation: 0,
        child: SizedBox(

          width: 40, // Adjust the width as needed
          height: 40, // Adjust the height as needed
          child: Image.asset('assets/images/floatbutton.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
