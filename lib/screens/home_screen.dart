import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:jopsearch/model/company.dart';
import 'package:jopsearch/screens/details_Screen.dart';
import 'package:jopsearch/widgets/app_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      key: globalKey,
      drawer: const Drawer(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //!: appBar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: appBar(() {
                  setState(() {
                    globalKey.currentState?.openDrawer();
                  });
                }),
              ),
              const SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Find Your Creative Jobs",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 0.66,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 238, 238, 238)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search for jobs",
                              hintStyle: GoogleFonts.poppins(
                                  color:
                                      const Color.fromARGB(255, 180, 180, 180),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 13),
                    Container(
                      width: width * 0.16,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 0, 0, 0)),
                      child: const Center(
                          child: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 23),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Papular company",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    Text(
                      "See all",
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 192, 192, 192),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              AnimationLimiter(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      companyData.length,
                      (index) {
                        final items = companyData[index];
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          child: FadeInAnimation(
                            delay: const Duration(milliseconds: 100),
                            curve: Curves.fastLinearToSlowEaseIn,
                            // verticalOffset: -250,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 24.0, right: 5),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        JobSdetails(companyModels: items),
                                  ));
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(15),
                                  width: width * 0.73,
                                  height: 176,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.black),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(8),
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: const Color.fromARGB(
                                                      255, 85, 85, 85)),
                                              child: Image.asset(items.img),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                      text: items.name,
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 14)),
                                                  TextSpan(
                                                      text:
                                                          '\n${items.locations}',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  192,
                                                                  192,
                                                                  192),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 12)),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 11,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(items.jobs,
                                                style: GoogleFonts.poppins(
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14)),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                Text(items.pays,
                                                    style: GoogleFonts.poppins(
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 192, 192, 192),
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12)),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  width: 80,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7),
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 85, 85, 85)),
                                                  child: Center(
                                                      child: Text(items.jobType,
                                                          style: GoogleFonts.poppins(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  197,
                                                                  197,
                                                                  197),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 12))),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.bookmark_border,
                                            color: Color.fromARGB(
                                                255, 224, 224, 224),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 23),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Jobs",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    Text(
                      "See all",
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 192, 192, 192),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              AnimationLimiter(
                child: Column(
                  children: List.generate(companyData.length, (index) {
                    final items = companyData[index];
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      delay: const Duration(milliseconds: 100),
                      child: SlideAnimation(
                        duration: const Duration(milliseconds: 2500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        verticalOffset: -250,
                        child: ScaleAnimation(
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 14.0, horizontal: 25),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      JobSdetails(companyModels: items),
                                ));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                width: width * 0.9,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: const Color.fromARGB(
                                        255, 231, 231, 231)),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                      ),
                                      child: Image.asset(items.img),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          items.jobs,
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          items.jobType,
                                          style: GoogleFonts.poppins(
                                              color: const Color.fromARGB(
                                                  255, 192, 192, 192),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
