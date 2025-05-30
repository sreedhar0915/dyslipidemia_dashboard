import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/helpers/app_color.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/helpers/size_extension.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/helpers/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicationmonitoringCard extends StatefulWidget {
  final String title;
  final String rating;

  const MedicationmonitoringCard({
    super.key,
    required this.title,
    required this.rating,
  });

  @override
  State<MedicationmonitoringCard> createState() =>
      _MedicationmonitoringCardState();
}

class _MedicationmonitoringCardState extends State<MedicationmonitoringCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 89.h,
      width: 343.w,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title,
              style: GoogleFonts.roboto(
                  color: AppColors.grey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400)),
          sizedBoxWithHeight(10),
          Text(widget.rating,
              style: GoogleFonts.roboto(
                  color: AppColors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
