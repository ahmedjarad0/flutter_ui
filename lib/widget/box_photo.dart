import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BoxPhoto extends StatelessWidget {
  const BoxPhoto({
    this.bottomMargin = 0 ,
   required this.color,
    super.key,
  });
 final double bottomMargin ;
 final Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 30),
      margin:  EdgeInsets.only(bottom: bottomMargin),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Colors.black45,blurRadius: 6)
          ],
          color: color,
          borderRadius: BorderRadius.circular(70)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Photographer',
                  style: GoogleFonts.cairo(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.arrow_back_ios),
                ),
              ]),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              '\$120/h',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Subject and studio Photography of goods for an online store.Photo processing ',
            style: TextStyle(color: Color(0xff5353b4)),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xff1f1fa7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Photographer',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xff1f1fa7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Photoshop',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
