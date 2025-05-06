import 'package:flutter/material.dart';
import 'package:intermediate_practice/constants/app_colors.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: APPColors.appColor2,
        title: Text('About'),
        backgroundColor:APPColors.appColor1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hammer Tools 🛠️",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Your one-stop mobile app for high-quality construction tools. Whether you're a builder, contractor, or a DIY enthusiast, Hammer Tools helps you find, learn about, and order the best tools for your project.",
                        style:
                            TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

             
              Card(
                color: Colors.orange[50],
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Our Mission 💡",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text(
                        "To empower the construction industry by connecting users to reliable, efficient, and durable tools that ensure quality and safety in every job.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

             
              Card(
                color: Colors.blue[50],
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Key Features 💡",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text("• Tool catalogue with images and descriptions"),
                      Text("• Price comparison and vendor information"),
                      Text("• Safety tips and usage tutorials"),
                      Text("• In-app ordering or inquiry support"),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              
              Text("App Version: 1.0.0",
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
              SizedBox(height: 8),
              Text("Contact us: support@hammertools.com",
                  style: TextStyle(fontSize: 14, color: Colors.grey)),

              SizedBox(height: 30),

              
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: APPColors.appColor1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  
                },
                icon: Icon(Icons.feedback_outlined),
                label: Text("Send Feedback"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
