import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/controller/dyslipidemia_dashboard_controller.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/helpers/app_color.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/helpers/screen_config.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/helpers/size_extension.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/helpers/sizedbox.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/widgets/lifestylediet_card.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/widgets/medicationmonitoring_card.dart';
import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/widgets/meter_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DyslipidemiaDashboardScreen extends StatefulWidget {
  const DyslipidemiaDashboardScreen({super.key});

  @override
  State<DyslipidemiaDashboardScreen> createState() =>
      _DyslipidemiaDashboardScreenState();
}

class _DyslipidemiaDashboardScreenState
    extends State<DyslipidemiaDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.getInstance().init(context);
    final LipidProfilecontroller =
        context.watch<DyslipidemiaDashboardController>().LipidProfile;
    final MetabolicHealthcontroller =
        context.watch<DyslipidemiaDashboardController>().MetabolicHealth;
    // final statuscontroller =
    //     context.watch<HypertensionDashboardController>().getStatusData(0.8);
    final PhysicalMetricscontroller =
        context.watch<DyslipidemiaDashboardController>().PhysicalMetrics;

    final LifestyleDietcontroller =
        context.watch<DyslipidemiaDashboardController>().LifestyleDiet;
    final MedicationMonitoringcontroller =
        context.watch<DyslipidemiaDashboardController>().MedicationMonitoring;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
              color: AppColors.black,
            )),
        title: Center(
            child: Text(
          "Dashboard",
          style: GoogleFonts.roboto(
              color: AppColors.black,
              fontSize: 17,
              fontWeight: FontWeight.w500),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    child: const Image(
                      image: AssetImage("assets/images/dyslipidemia_logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  sizedBoxWithWidth(20),
                  Text(
                    "Dyslipidemia",
                    style: GoogleFonts.roboto(
                        color: AppColors.maincolor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: AppColors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lipid Profile",
                      style: GoogleFonts.roboto(
                          color: AppColors.secondtitle,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    sizedBoxWithHeight(5),
                    Column(
                        children: List.generate(
                      LipidProfilecontroller.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InkWell(
                            onTap: () {},
                            child: MeterContainer(
                              title:
                                  LipidProfilecontroller[index]["title"] ?? "",
                              rating:
                                  LipidProfilecontroller[index]["rating"] ?? "",
                              status:
                                  LipidProfilecontroller[index]["status"] ?? "",
                              statusColor:
                                  LipidProfilecontroller[index]["color"] ?? "",
                              statusimage:
                                  LipidProfilecontroller[index]["icon"] ?? "",
                            )),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            sizedBoxWithHeight(50),
            Container(
              width: double.infinity,
              color: AppColors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Metabolic Health",
                      style: GoogleFonts.roboto(
                          color: AppColors.secondtitle,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    sizedBoxWithHeight(5),
                    Column(
                        children: List.generate(
                      MetabolicHealthcontroller.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InkWell(
                            onTap: () {},
                            child: MeterContainer(
                              title: MetabolicHealthcontroller[index]
                                      ["title"] ??
                                  "",
                              rating: MetabolicHealthcontroller[index]
                                      ["rating"] ??
                                  "",
                              status: MetabolicHealthcontroller[index]
                                      ["status"] ??
                                  "",
                              statusColor: MetabolicHealthcontroller[index]
                                      ["color"] ??
                                  "",
                              statusimage: MetabolicHealthcontroller[index]
                                      ["icon"] ??
                                  "",
                            )),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            sizedBoxWithHeight(50),
            Container(
              width: double.infinity,
              color: AppColors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Physical Metrics",
                      style: GoogleFonts.roboto(
                          color: AppColors.secondtitle,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    sizedBoxWithHeight(5),
                    Column(
                        children: List.generate(
                      PhysicalMetricscontroller.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InkWell(
                            onTap: () {},
                            child: MeterContainer(
                              title: PhysicalMetricscontroller[index]
                                      ["title"] ??
                                  "",
                              rating: PhysicalMetricscontroller[index]
                                      ["rating"] ??
                                  "",
                              status: PhysicalMetricscontroller[index]
                                      ["status"] ??
                                  "",
                              statusColor: PhysicalMetricscontroller[index]
                                      ["color"] ??
                                  "",
                              statusimage: PhysicalMetricscontroller[index]
                                      ["icon"] ??
                                  "",
                            )),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            sizedBoxWithHeight(50),
            Container(
              width: double.infinity,
              color: AppColors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lifestyle & Diet",
                      style: GoogleFonts.roboto(
                          color: AppColors.secondtitle,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    sizedBoxWithHeight(5),
                    Column(
                        children: List.generate(LifestyleDietcontroller.length,
                            (index) {
                      final item = LifestyleDietcontroller[index];
                      final double percentage = item["percentage"] ?? 0.0;

                      final statuscontroller = context
                          .read<DyslipidemiaDashboardController>()
                          .getStatusData(percentage);
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InkWell(
                            onTap: () {},
                            child: LifestyledietCard(
                              title:
                                  LifestyleDietcontroller[index]["title"] ?? "",
                              value: LifestyleDietcontroller[index]["rating"] ??
                                  "",
                              percentage: percentage,
                              status: statuscontroller["status"],
                              statusColor: statuscontroller["color"],
                              statusimage: statuscontroller["icon"],
                            )),
                      );
                    })),
                    Container(
                      // height: 89.h,
                      // width: 343.w,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                          Text("Alcohol & Smoking Habits",
                              style: GoogleFonts.roboto(
                                  color: AppColors.grey,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400)),
                          sizedBoxWithHeight(10),
                          Row(
                            children: [
                              Expanded(
                                child: Text("Occasional Alcohol, Non-smoker",
                                    maxLines: 2,
                                    style: GoogleFonts.roboto(
                                        color: AppColors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600)),
                              ),
                              const Spacer(),
                              Image.asset("assets/images/high.png",
                                  height: 16.h, width: 16.w),
                              sizedBoxWithWidth(4),
                              Text(
                                "High",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            sizedBoxWithHeight(50),
            Container(
              width: double.infinity,
              color: AppColors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Medication Monitoring",
                      style: GoogleFonts.roboto(
                          color: AppColors.secondtitle,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    sizedBoxWithHeight(5),
                    Column(
                        children: List.generate(
                      MedicationMonitoringcontroller.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: InkWell(
                            onTap: () {},
                            child: MedicationmonitoringCard(
                              title: MedicationMonitoringcontroller[index]
                                      ["title"] ??
                                  "",
                              rating: MedicationMonitoringcontroller[index]
                                      ["rating"] ??
                                  "",
                            )),
                      ),
                    )),
                    sizedBoxWithHeight(10),
                  ],
                ),
              ),
            ),
            sizedBoxWithHeight(10),
          ],
        ),
      ),
    );
  }
}
