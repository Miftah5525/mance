// import 'package:flutter/material.dart';
// import 'package:intermediate_practice/constants/app_colors.dart';
// import 'package:intermediate_practice/screens/sign_in_page.dart';
// import 'package:intermediate_practice/screens/sign_up_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:intermediate_practice/widgets/custom_options.dart';
// import 'package:intermediate_practice/screens/about_page.dart';
// import 'package:intermediate_practice/widgets/custom_tabs.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     super.initState();

//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (mounted) {
//         Future.delayed(Duration(milliseconds: 300), () {
//           _showWelcomeSheet();
//         });
//       }
//     });
//   }

//   void _showWelcomeSheet() {
//     showModalBottomSheet(
//       context: context,
//       isDismissible: true,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
//       ),
//       builder: (BuildContext context) {
//         return Container(
//           decoration: BoxDecoration(
//             color: const Color.fromARGB(255, 12, 10, 10),
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(15),
//               topRight: Radius.circular(15),
//             ),
//           ),
//           height: 250,
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Wrap(
//               children: [
//                 Center(
//                   child: Text(
//                     '👷 Welcome to Hammer 🔨',
//                     style: TextStyle(
//                       color: APPColors.appColor1,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 Center(
//                   child: Text(
//                     'Please sign up or log in to order construction tools.',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(color: APPColors.appColor2),
//                   ),
//                 ),
//                 SizedBox(height: 24),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: WidgetStatePropertyAll(
//                           APPColors.appColor1,
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => SignUp()),
//                         );
//                       },
//                       child: Text(
//                         'Create Account',
//                         style: TextStyle(color: APPColors.appColor2),
//                       ),
//                     ),
//                     ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: WidgetStatePropertyAll(
//                           APPColors.appColor1,
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => SignIn()),
//                         );
//                       },
//                       child: Text(
//                         '  Log in   ',
//                         style: TextStyle(color: APPColors.appColor2),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color.fromARGB(255, 199, 208, 198),

//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Text(
//             'Hammer Construction',
//             style: TextStyle(
//               color: APPColors.appColor1,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           leading: Builder(
//             builder:
//                 (context) => IconButton(
//                   onPressed: () {
//                     Scaffold.of(context).openDrawer(); // now works!
//                   },
//                   icon: Icon(
//                     CupertinoIcons.settings,
//                     color: APPColors.appColor1,
//                     size: 35,
//                   ),
//                 ),
//           ),
//         ),

//         drawer: Drawer(
//           width: MediaQuery.sizeOf(context).width * 0.8,
//           backgroundColor: APPColors.appPureBlack.withOpacity(0.5),
//           child: ListView(
//             children: [
//               DrawerHeader(
//                 padding: EdgeInsets.only(top: 0),
//                 margin: EdgeInsets.symmetric(
//                   vertical: MediaQuery.sizeOf(context).height * 0.0001,
//                 ),
//                 child: Row(
//                   children: [
//                     Icon(
//                       CupertinoIcons.hammer_fill,
//                       color: APPColors.appColor1,
//                       size: 60,
//                     ),
//                     Text(
//                       ' CONSTRUCTION',
//                       style: TextStyle(
//                         color: APPColors.appColor1,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               Options(
//                 tile_data: 'Create account',
//                 Leading: Icon(Icons.create, color: APPColors.appColor1),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => SignUp()),
//                   );
//                 },
//               ),

//               Options(
//                 tile_data: 'Log in',
//                 Leading: Icon(Icons.login, color: APPColors.appColor1),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => SignIn()),
//                   );
//                 },
//               ),

//               Options(
//                 tile_data: 'About',
//                 Leading: Icon(Icons.create, color: APPColors.appColor1),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => About()),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
        
//       );
    
//   }
// }

// // class Home_Content extends StatelessWidget {
// //   const Home_Content({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: double.infinity,
// //       height: double.infinity,
// //       child: SingleChildScrollView(
// //         child: DefaultTabController(
// //           length: 3,
// //           child: TabBar(
// //             tabs: [
// //               Tabs(Tab_name: 'Tab One'),
// //               Tabs(Tab_name: 'Tab Two'),
// //               Tabs(Tab_name: 'Tab Three'),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
