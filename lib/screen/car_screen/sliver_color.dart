import 'package:flutter/material.dart';

class SliverColor extends StatefulWidget {
  const SliverColor({Key? key}) : super(key: key);

  @override
  State<SliverColor> createState() => _SliverColorState();
}

class _SliverColorState extends State<SliverColor> {
  @override
  Widget build(BuildContext context) {
    // Get the current theme's brightness (light or dark mode)
    final brightness = Theme.of(context).brightness;

    // Select background color based on theme
    final backgroundColor = brightness == Brightness.dark
        ? Colors.black
        : const Color(0x741D5E0C); // Dark mode: black, Light mode: semi-transparent brown

    return SliverToBoxAdapter(
      child: Container(
        color: backgroundColor,
        width: MediaQuery.of(context).size.width, // Make the container width dynamic
        height: 70,
        child: GridView.count(
          crossAxisCount: 1,
          scrollDirection: Axis.horizontal,
          children: [
            Image.asset(
              'lib/images/c01.png',
              fit: BoxFit.cover, // Preserve aspect ratio
            ),
            Image.asset(
              'lib/images/c02.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/images/c03.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/images/c04.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/images/c05.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'lib/images/c06.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        // Light theme settings
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.blue,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.grey),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        // Dark theme settings
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.blueGrey,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white70),
        ),
      ),
      themeMode: ThemeMode.system, // Use system theme mode (light or dark)
      home: const Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverColor(),
          ],
        ),
      ),
    ),
  );
}
