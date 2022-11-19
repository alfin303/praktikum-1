import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:path_provider_android/path_provider_android.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Container(
                color: Colors.blueGrey,
                height: 57.6,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: const Color(0x080a0928),
                      ),
                      child: const Icon(Icons.reorder),
                    ),
                    Text(
                      'AlfinArtApp',
                      style: GoogleFonts.playfairDisplay(
                        color: Color.fromARGB(255, 248, 245, 245),
                      ),
                    ),

                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: const Color(0x080a0928),
                      ),
                      child: const Icon(Icons.search),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8),
                child: Text(
                  'Welcome to \n Alfin Store',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 40.6, fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 75, 68, 75),
                  ),
                  ),
                ),
           Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            color: Colors.black87,
            height: 218.4,
            margin: const EdgeInsets.only(top: 20.8),
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/photo-frame-mockup-letter-paper-vintage-style-flat-lay-picture-id1331162582?s=612x612'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/photo-frame-mockup-letter-paper-vintage-style-flat-lay-picture-id1331162582?k=20&m=1331162582&s=612x612&w=0&h=g_RIvWHu_OqAVv_OLGSyGY526F3PFnYbIYTcB4mcaZI='))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/photo-frame-mockup-letter-paper-vintage-style-flat-lay-picture-id1331162582?s=612x612'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/photo-frame-mockup-letter-paper-vintage-style-flat-lay-picture-id1331162582?s=612x612'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
                
              ],
            ),
           ),
           Padding(
            padding: const EdgeInsets.only(left: 28.8, top: 28.8),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 4,
              effect: const ExpandingDotsEffect(
                activeDotColor: Colors.blue,
                dotColor: Colors.blueGrey,
                dotHeight: 5,
                dotWidth: 6,
                spacing: 5),
            ),
           ),
           Padding(
            padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Untuk Kamu',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Show All',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey,
                  ),
                )
              ],
            ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/arabic-calligraphy-picture-id149404373?k=20&m=149404373&s=612x612&w=0&h=GPDzdZkUtZrU2R_sPNsRbuwE7qHGAJYUK6CY_sSiQ8s='))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen(),
                    ),
                    );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/photo-frame-mockup-letter-paper-vintage-style-flat-lay-picture-id1331162582?s=612x612'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/photo-frame-mockup-letter-paper-vintage-style-flat-lay-picture-id1331162582?s=612x612'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/photo-frame-mockup-letter-paper-vintage-style-flat-lay-picture-id1331162582?s=612x612'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/photo-frame-mockup-letter-paper-vintage-style-flat-lay-picture-id1331162582?s=612x612'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
           Padding(
            padding: EdgeInsets.only(top: 50, left: 30, right: 30),
            child: GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(right: 28.8),
                    width: 333.6,
                    height: 218.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://media.istockphoto.com/photos/photo-frame-mockup-letter-paper-vintage-style-flat-lay-picture-id1331162582?s=612x612'))),
                  ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const DetailScreen()
                    ),
                  );
                  print("You Click Me");
                },
                ),
           ),
            ],
          )
        )
      )
    );
  }
}
