import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:intermediate_practice/screens/cart_page.dart';
import 'dart:convert';
import 'models/tool.dart';
import 'package:intermediate_practice/widgets/custom_tabs.dart';
import 'package:intermediate_practice/widgets/custom_options.dart';
import 'package:intermediate_practice/constants/app_colors.dart';
import 'package:intermediate_practice/screens/sign_in_page.dart';
import 'package:intermediate_practice/screens/sign_up_page.dart';
import 'package:intermediate_practice/screens/about_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Tool> tools = [];

  Future<void> loadTools() async {
    final String response = await rootBundle.loadString('assets/tools.json');
    final List<dynamic> data = json.decode(response);
    setState(() {
      tools = data.map((toolJson) => Tool.fromJson(toolJson)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    loadTools();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        Future.delayed(Duration(milliseconds: 300), () {
          _showWelcomeSheet();
        });
      }
    });
  }

  void _showWelcomeSheet() {
    final ctx = navigatorKey.currentContext!;
    showModalBottomSheet(
      context: ctx,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 12, 10, 10),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Wrap(
              children: [
                Center(
                  child: Text(
                    '👷 Welcome to Hammer 🔨',
                    style: TextStyle(
                      color: APPColors.appColor1,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    'Please sign up to order construction tools.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: APPColors.appColor2),
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        APPColors.appColor1,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Future.delayed(Duration(milliseconds: 100), () {
                        navigatorKey.currentState!.push(
                          MaterialPageRoute(builder: (_) => SignUp()),
                        );
                      });
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: APPColors.appColor2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 199, 208, 198),
          appBar: AppBar(
            foregroundColor: APPColors.appColor1,
            backgroundColor: Colors.white,
            title: Text(
              'Hammer Construction',
              style: TextStyle(
                color: APPColors.appColor1,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: Builder(
              builder:
                  (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: APPColors.appColor1,
                      size: 35,
                    ),
                  ),
            ),

            actions: [
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: APPColors.appColor1,
                ),
                onPressed: () {
                  navigatorKey.currentState!.push(
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
              ),
            ],
          ),

          drawer: Drawer(
            width: MediaQuery.sizeOf(context).width * 0.8,
            // ignore: deprecated_member_use
            backgroundColor: APPColors.appPureBlack.withOpacity(0.5),
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.hammer_fill,
                        color: APPColors.appColor1,
                        size: 60,
                      ),
                      Text(
                        ' CONSTRUCTION',
                        style: TextStyle(
                          color: APPColors.appColor1,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Options(
                  tile_data: 'Create account',
                  Leading: Icon(Icons.create, color: APPColors.appColor1),
                  onTap: () {
                    Navigator.of(
                      navigatorKey.currentContext!,
                    ).push(MaterialPageRoute(builder: (context) => SignUp()));
                  },
                ),

                Options(
                  tile_data: 'Log in',
                  Leading: Icon(Icons.login, color: APPColors.appColor1),
                  onTap: () {
                    Navigator.of(
                      navigatorKey.currentContext!,
                    ).push(MaterialPageRoute(builder: (context) => SignIn()));
                  },
                ),

                Options(
                  tile_data: 'About',
                  Leading: Icon(Icons.info, color: APPColors.appColor1),
                  onTap: () {
                    Navigator.of(
                      navigatorKey.currentContext!,
                    ).push(MaterialPageRoute(builder: (context) => About()));
                  },
                ),
              ],
            ),
          ),

          body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TabBar(
                    isScrollable: true,
                    tabs: [
                      Tabs(Tab_name: 'General'),
                      Tabs(Tab_name: 'Electrical'),
                      Tabs(Tab_name: 'Buildining tools'),
                      Tabs(Tab_name: 'Painting'),
                      Tabs(Tab_name: 'Ceramics'),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      tools.isEmpty
                          ? const Center(child: CircularProgressIndicator())
                          : GridView.builder(
                            padding: const EdgeInsets.all(10),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 0.8,
                                ),
                            itemCount: tools.length,
                            itemBuilder: (context, index) {
                              final tool = tools[index];
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                elevation: 5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                        tool.image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      tool.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      '\$${tool.price}',
                                      style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                      const Center(child: Text('Electrical tools coming soon')),
                      const Center(child: Text('Building tools coming soon')),
                      const Center(child: Text('Painting tools coming soon')),
                      const Center(child: Text('Ceramics tools coming soon')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
