// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jopsearch/model/company.dart';
import 'package:jopsearch/screens/home_screen.dart';

class JobSdetails extends StatefulWidget {
  final CompanyModels companyModels;
  const JobSdetails({
    Key? key,
    required this.companyModels,
  }) : super(key: key);

  @override
  State<JobSdetails> createState() => _JobSdetailsState();
}

class _JobSdetailsState extends State<JobSdetails> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        child: Container(
          height: 60,
          width: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text("Apply now",
                style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w700,
                    fontSize: 16)),
          ),
        ),
      ),



      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                      },
                      child: Container(
                        width: 37,
                        height: 37,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 170, 170, 170)),
                            borderRadius: BorderRadius.circular(6)),
                        child: const Center(
                            child: Icon(Icons.keyboard_arrow_left)),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 37,
                        height: 37,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 170, 170, 170)),
                            borderRadius: BorderRadius.circular(6)),
                        child: const Center(child: Icon(Icons.bookmark_border)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: width * 0.4,
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 231, 231, 231)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: 85,
                            height: 85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Image.asset(widget.companyModels.img),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.companyModels.name,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                          Text(
                            widget.companyModels.locations,
                            style: GoogleFonts.poppins(
                                color: const Color.fromARGB(255, 192, 192, 192),
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * 0.4,
                          child: Text(
                            widget.companyModels.jobs,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700, fontSize: 19),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "${widget.companyModels.name}.${widget.companyModels.jobType}",
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 192, 192, 192),
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(widget.companyModels.pays,
                            style: GoogleFonts.poppins(
                                color: const Color.fromARGB(255, 192, 192, 192),
                                fontWeight: FontWeight.w700,
                                fontSize: 13)),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color.fromARGB(255, 85, 85, 85)),
                          child: Center(
                              child: Text(widget.companyModels.jobType,
                                  style: GoogleFonts.poppins(
                                      color: const Color.fromARGB(
                                          255, 197, 197, 197),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12))),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  width: width * 0.9,
                  height: 70,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isClicked = !true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: isClicked
                                    ? Colors.grey
                                    : const Color.fromARGB(255, 0, 0, 0),
                                borderRadius: BorderRadius.circular(12)),
                            width: width * 0.4,
                            height: 75,
                            child: Center(
                              child: Text('Descriptions',
                                  style: GoogleFonts.poppins(
                                      color: const Color.fromARGB(
                                          255, 253, 253, 253),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isClicked = !false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: isClicked
                                    ? const Color.fromARGB(255, 0, 0, 0)
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(12)),
                            width: width * 0.4,
                            height: 75,
                            child: Center(
                              child: Text('company',
                                  style: GoogleFonts.poppins(
                                      color: const Color.fromARGB(
                                          255, 253, 253, 253),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (isClicked == true) const Text(""),
              if (isClicked == false)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('About the Job',
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w700,
                              fontSize: 18)),
                      const SizedBox(
                        height: 14,
                      ),
                      SizedBox(
                        width: width * 0.9,
                        child: Text(widget.companyModels.jobsAbout,
                            style: GoogleFonts.poppins(
                                color: const Color.fromARGB(255, 156, 156, 156),
                                fontWeight: FontWeight.w700,
                                fontSize: 14)),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      Text('Requirements',
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w700,
                              fontSize: 18)),
                      ...List.generate(
                          widget.companyModels.minimumQualificationsGoogle
                              .length, (index) {
                        return SizedBox(
                            width: width * 0.9,
                            child: RichText(
                              text: TextSpan(
                                text: '.',
                                style: GoogleFonts.poppins(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 35),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: widget.companyModels
                                          .minimumQualificationsGoogle[index],
                                      style: GoogleFonts.poppins(
                                          color: const Color.fromARGB(
                                              255, 156, 156, 156),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13)),
                                ],
                              ),
                            ));
                      }),
                      const SizedBox(
                        height: 23,
                      ),
                      Text('Responsibility',
                          style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w700,
                              fontSize: 18)),
                      ...List.generate(
                          widget.companyModels.responsibilitiesGoogle.length,
                          (index) {
                        return SizedBox(
                            width: width * 0.9,
                            child: RichText(
                              text: TextSpan(
                                text: '.',
                                style: GoogleFonts.poppins(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 35),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: widget.companyModels
                                          .responsibilitiesGoogle[index],
                                      style: GoogleFonts.poppins(
                                          color: const Color.fromARGB(
                                              255, 156, 156, 156),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13)),
                                ],
                              ),
                            ));
                      }),
                    ],
                  ),
                )
            ],
          ),
        ),
      )),
    );
  }
}
