import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/img.dart';

class HomeApplicant extends StatefulWidget {
  const HomeApplicant({super.key});

  @override
  State<HomeApplicant> createState() => _HomeApplicantState();
}

class _HomeApplicantState extends State<HomeApplicant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF422F0B), // Primary color
          title: Text('RIMs Home', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // Implement search functionality
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                // Implement notifications functionality
              },
            ),        ],
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

              color: Color(0xFF422F0B),
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

                SizedBox(
                  height: 5,
                ),
                Text(
                  "SUMAYAH SWAIBK ",
                  style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),

                ),
                SizedBox(height: 10,),
                Text(
                  " Applicant ",
                  style: TextStyle(color: Colors.white,
                    fontSize: 14,
                  ),

                ),
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(
                    "CALLS",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  onTap: (){
                  /*  Get.to(() => const Membersscreen());*/
                  },
                ),

                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(
                    "GRANTS",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  onTap: (){
                    /*  Get.to(() => const Membersscreen());*/
                  },
                ),

                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(
                    "SCHOLARSHIPS",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  onTap: (){
                    /*  Get.to(() => const Membersscreen());*/
                  },
                ),

                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(
                    "FELLOWSHIPS",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  onTap: (){
                    /*  Get.to(() => const Membersscreen());*/
                  },
                ),


                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  title: Text(
                    "CHALLENGE HUB",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  onTap: (){
                    /*  Get.to(() => const Membersscreen());*/
                  },
                ),



                Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  height: 1,
                  color: Colors.brown,
                ),
                ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    title: Text(
                      "LOGOUT",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                    onTap:(){
                     /* logout(context);*/
                    }
                ),
              ],
            ),
          ],
        ),
      ),


      body: SingleChildScrollView(
        // Allows scrolling if content overflows
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section/Welcome Banner
            Container(
              padding: EdgeInsets.all(24.0),
              margin: EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Color(0xFF5D4037), // A lighter shade of primary
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Sumayah',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Welcome to RIMs',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Your central hub for Ruforum information management.',
                    style: TextStyle(color: Colors.white70),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to a key feature
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Secondary color
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Explore Projects'),
                  ),
                ],
              ),
            ),

            // Key Features/Navigation Cards
            Text(
              'Quick Access',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics:
              NeverScrollableScrollPhysics(), // To disable GridView's scrolling
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              children: [
                _buildFeatureCard(
                  context,
                  'Research Projects',
                  Icons.folder,
                  Colors.green.shade300,
                  "2",
                      () {
                    // Navigate to Research Projects screen
                  },

                ),
                _buildFeatureCard(
                  context,
                  'Publications',
                  Icons.book,
                  Colors.green.shade400,
                  "2",
                      () {
                    // Navigate to Publications screen
                  },
                ),
                _buildFeatureCard(
                  context,
                  'Network',
                  Icons.people,
                  Colors.green.shade500,
                  "2",

                      () {
                    // Navigate to Network Directory screen
                  },
                ),
                _buildFeatureCard(
                  context,
                  'Events',
                  Icons.event,
                  Colors.green.shade600,
                      "2",
                      () {
                    // Navigate to Events screen
                  },
                ),
                // Add more feature cards here
              ],
            ),
            SizedBox(height: 24.0),

            // Announcements/Latest Updates
            Text(
              'Latest Updates',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            // Replace with actual data fetching and display
            ListTile(
              leading: Icon(Icons.announcement, color: Colors.green),
              title: Text('New Research Grant Announced!'),
              subtitle: Text(
                'Details about the upcoming grant application process.',
              ),
              onTap: () {
                // Navigate to announcement details
              },
            ),
            ListTile(
              leading: Icon(Icons.event_note, color: Colors.green),
              title: Text('Upcoming Conference on Sustainable Agriculture'),
              subtitle: Text('Register now for the Ruforum annual conference.'),
              onTap: () {
                // Navigate to event details
              },
            ),
            // Add more list items for announcements
          ],
        ),
      ),

    bottomNavigationBar: Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[200],
      child: Text(
        '\u00A9 2025 Ruforum. All rights reserved.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black54),
      ),

    ),
    );
  }
  Widget _buildFeatureCard(
      BuildContext context,
      String title,
      IconData icon,
      Color color,
      String  count ,
      VoidCallback onTap,
      ) {
    return Card(

      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30.0, color: color),
            SizedBox(height: 10,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                count,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20,),
              Text(
                "Active",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],),

            SizedBox(height: 8.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }
}
