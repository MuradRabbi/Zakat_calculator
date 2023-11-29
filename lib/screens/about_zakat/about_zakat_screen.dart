import 'package:flutter/material.dart';
import 'package:zakat_calculator/app_utils/size_config.dart';

import '../../app_utils/app_colors.dart';
import '../../custom_widgets/custom_app_bar.dart';

class AboutZakatScreen extends StatelessWidget {
  const AboutZakatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(80),
                ),
                Container(
                  height: getProportionateScreenHeight(200),
                  width: getProportionateScreenWidth(200),
                  child: Opacity(
                    opacity: 0.25,
                    child: Image.asset(
                      "assets/images/about_zakat_bg.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(35),
                  ),
                  CustomAppBar(
                      icon: "assets/images/info_icon.png",
                      title: "যাকাত সম্পর্কিত কিছু কথা"),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1.5, color: AppColors.appThemeColor),
                          color: AppColors.appThemeColor.withOpacity(0.10)),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Text(
                            """যাকাত ইসলামের অত্যন্ত গুরুত্বপূর্ণ রোকন । ঈমানের পরে সালাত ও যাকাত সবচেয়ে গুরুত্বপূর্ণ ফরয ইবাদত। কুরআন মজীদে বহু আয়াতে সালাত-যাকাতের আদেশ করা হয়েছে এবং যারা তা পালন করে তাদের জন্য আখেরাতে অশেষ ছওয়াব, রহমত ও মাগফিরাতের পাশাপাশি প্রাণ ও সম্পদের পরিশুদ্ধির সুসংবাদ দেয়া হয়েছে।\n\nএক আয়াতে ইরশাদ হয়েছে-
 وَأَقِيمُوا الصَّلَاةَ وَآتُوا الزَّكَاةَ وَمَا تُقَدِّمُوا لِأَنْفُسِكُمْ مِنْ خَيْرٍ تَجِدُوهُ عِنْدَ اللَّهِ إِنَّ اللَّهَ بِمَا تَعْمَلُونَ بَصِيرٌ
\n“তোমরা সালাত আদায় কর এবং যাকাত প্রদান কর। যে ভালো কাজই তোমরা অগ্রে প্রেরণ করবে তা আল্লাহর কাছে পাবে। নিশ্চয়ই তোমরা যা কর আল্লাহ তা দেখছেন।” (সূরা বাকারা ২ : ১১০)\n\n
কুরআন মজীদে সালাত-যাকাতের যে গুরুত্ব তা থেকে সুস্পষ্টভাবে বোঝা যায় যে, সালাত-যাকাত আদায়ে যত্নবান হওয়া ছাড়া আল্লাহ তায়ালার নৈকট্য অর্জনের প্রশ্নই আসে না। শুধু তাই নয়, যাকাত ফরয হওয়া সত্ত্বেও যারা তা আদায় করে না তাদের জন্য আছে আখিরাতে ভয়াবহ শাস্তির হুঁশিয়ারি।\n\nইরশাদ হয়েছে—
 وَلَا يَحْسَبَنَّ الَّذِينَ يَبْخَلُونَ بِمَا آتَاهُمُ اللَّهُ مِنْ فَضْلِهِ هُوَ خَيْرًا لَهُمْ بَلْ هُوَ شَرٌّ لَهُمْ سَيُطَوَّقُونَ مَا بَخِلُوا بِهِ يَوْمَ الْقِيَامَةِ وَلِلَّهِ مِيرَاثُ السَّمَاوَاتِ وَالْأَرْضِ وَاللَّهُ بِمَا تَعْمَلُونَ خَبِيرٌ
\n“আর আল্লাহ তায়ালা নিজ অনুগ্রহে যা দিয়েছেন তাতে যারা কৃপণতা করে তারা যেন কিছুতেই মনে না করে যে, এটা তাদের জন্য মঙ্গলজনক। না, এটা তাদের জন্য অমঙ্গলজনক। যে সম্পদে তারা কার্পণ্য করছে কিয়ামতের দিন তাই তাদের গলার বেড়ি হবে। আসমান ও যমীনের স্বত্ত্বাধিকার একমাত্র আল্লাহরই। তোমরা যা কর আল্লাহ তা বিশেষভাবে অবগত।” (সূরা আলে ইমরান : ১৮০ )

বহু হাদীসে রাসূল সাল্লাল্লাহু আলাইহি ওয়া সাল্লাম যাকাত আদায় না করার ভয়াবহতা তুলে ধরেছেন। এক হাদীসে বর্ণিত হয়েছে-

 مَنْ آتَاهُ اللَّهُ مَالاً فَلَمْ يُؤَدِّ زَكَاتَهُ، مُثْلَ لَهُ مَالُهُ شُجَاعًا أَقْرَعَ، لَهُ زَبِيبَتَانِ يُطَوَّقُهُ يَوْمَ الْقِيَامَةِ، يَأْخُذُ بِلِهْزِمَتَيْهِ - يَعْنِي بِشِدْقَيْهِ - يَقُولُ: أَنَا مَالُكَ أَنَا كَنْزُكَ . 

রাসূল সাল্লাল্লাহু আলাইহি ওয়া সাল্লাম বলেন, যাকে আল্লাহ সম্পদ দান করেছেন, কিন্তু সে এর যাকাত আদায় করেনি, কিয়ামতের দিন তার সম্পদকে টাক মাথা বিশিষ্ট বিষধর সাপের আকৃতি দান করে তার গলায় ঝুলিয়ে দেয়া হবে। সাপটি তার মুখের দু'পার্শ্ব কামড়ে ধরে বলবে, আমি তোমার সম্পদ, আমি তোমার জমাকৃত মাল। (সহীহ বুখারী: ১৪০৩) কাজেই যাদের উপর যাকাত ফরয তাদের অবশ্যই তা আদায়ে যত্নবান হতে হবে। এই গুরুত্বপূর্ণ ফরয আদায়ে মুসলিম ভাইবোনদের সহযোগিতার শুভ কামনা থেকে মুআসসাসা ইলমিয়্যাহ বাংলাদেশ এই ‘ফরম’টি প্রস্তুত করেছে। এতে কোন কোন সম্পদে যাকাত দিতে হয়, ধারাবাহিকভাবে যাকাত হিসাব করার সহজ নিয়ম এবং যাকাতের কিছু আধুনিক ও জটিল মাসআলার সহজ সমাধান তুলে ধরা হয়েছে। ফরমটি যদি মুসলিম ভাইবোনের যাকাত আদায়ে সহায়ক হয় তাহলে আমাদের শ্রম সার্থক হবে। আল্লাহ তায়ালা আমাদের সকলকে তাকওয়া ও পুণ্যের কাজে পরস্পর সহযোগী হওয়ার তাওফীক দান করুন, আমীন।
 """),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
