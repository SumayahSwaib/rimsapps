import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    ); // Hide system UI

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const Home(), // Replace with your home screen
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    ); // Show system UI again
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: Drawer(
        child: Stack(
          children: [
            Image.asset(
              Img.get("raspy.png"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              color: MyColors.primary,
              // color: Colors.black.withOpacity(0.5),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove,color: Colors.white,)),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  Img.get("raspy.png"),
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "PAMOOJA - GROUP",
                  style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),

                ),
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(
                    "MEMBERS",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  onTap: (){
                    // Get.to(() => const Membersscreen());
                  },
                ),
                ListTile(
                  onTap: (){
                    // Get.to(() => const Membersscreen());
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(
                    "SAVINGS ",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.monetization_on,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  onTap: (){
                    //Get.to(() =>AboutUsScreen());
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(
                    "ABOUT RASPY",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  onTap: (){
                    //Get.to(() =>  FinancialPeriodsScreen({}));
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(
                    "FINANCIAL YEAR - 2024",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.punch_clock,
                    color: Colors.white,
                  ),
                ),

                Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  height: 0.5,
                  color: Colors.white,
                ),
                ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    title: Text(
                      "LOGOUT",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                    onTap:(){
                      logout(context);
                    }
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF422F0B), // Primary color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/ruforum.png',
              width: 250, // Adjust the width as needed
              height: 100, // Adjust the height as needed
            ),
            SizedBox(height: 20),
            Text(
              'WELCOME TO RUFORUM INFORMATION MANAGEMENT SYSTEM',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
