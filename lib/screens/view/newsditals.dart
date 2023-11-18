import 'package:flutter/material.dart';

class NewsDitailsScreen extends StatelessWidget {
  const NewsDitailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Image.asset(
                "assets/images/hortal.jpg",
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                    """গণতান্ত্রিক দেশে গণতান্ত্রিক পদ্ধতিতেই দেশ পরিচালিত হওয়ার কথা। কিন্তু আমাদের রাজনৈতিক নেতৃত্ব, সে হোক সরকারি বা বিরোধী দলের, তাঁরা প্রায়ই সেই সীমারেখা মানেন না। যখন দ্বাদশ সংসদ নির্বাচনের তফসিল ঘোষণা করা হলো, তখন দেশের রাজনৈতিক পরিস্থিতিটা স্বাভাবিক, এটা বলা যায় না। নির্বাচনের তফসিলকে সরকারি দল সোল্লাসে স্বাগত জানালেও বিরোধী দল প্রত্যাখ্যান করেছে। গত ২৯ অক্টোবর থেকে বিএনপি ও সমমনা দলগুলো সরকারের পদত্যাগের দাবিতে হরতাল-অবরোধ পালন করে আসছে।"""),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: cr,
                children: [
                  Icon(Icons.comment),
                  Icon(Icons.share),
                ],
              ),
              const Divider(
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
