import 'package:api_user/images/image_url.dart';
import 'package:api_user/widget/box_stack.dart';
import 'package:api_user/widget/box_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({Key? key}) : super(key: key);

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(ImageUrl.jacob),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Text(
                'Jacob Roberts',
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                'Photographer.work experience 7 years .I make nature and product photography',
                style: GoogleFonts.cairo(color: Colors.grey.shade500),
                maxLines: 2,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Text(
                        '112 ',
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'works ',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                      const Spacer(),
                      const Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          BoxStack(imageUrl: ImageUrl.nature1),
                          BoxStack(imageUrl: ImageUrl.nature2, marginRight: 25),
                          BoxStack(imageUrl: ImageUrl.nature3, marginRight: 50),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoxUi(
                      textNumber: '3',
                      text: 'applications',
                      color: Color(0xff090979)),
                  BoxUi(
                    textNumber: '25',
                    text: 'views today',
                    colorText: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
