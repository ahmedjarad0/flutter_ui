import 'package:api_user/widget/box_photo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoGraphScreen extends StatelessWidget {
  const PhotoGraphScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(Icons.settings),
                        ),
                        Container(
                            padding: const EdgeInsets.all(7),
                            decoration: const BoxDecoration(
                                color: Color(0xff090979), shape: BoxShape.circle),
                            child: const Text('15',
                                style: TextStyle(color: Colors.white))),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '74 result for ',
                  style: GoogleFonts.almarai(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\'Photographer\'',
                  style: GoogleFonts.almarai(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                 Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    BoxPhoto(bottomMargin: 170,color: Colors.grey.shade300),
                    BoxPhoto(bottomMargin: 185,color: Colors.grey.shade300) ,
                    const BoxPhoto(bottomMargin: 200,color: Color(0xff090979)),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

