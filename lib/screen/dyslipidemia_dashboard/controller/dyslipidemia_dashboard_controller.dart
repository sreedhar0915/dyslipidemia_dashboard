import 'package:dyslipidemia_dashboard/screen/dyslipidemia_dashboard/helpers/app_color.dart';
import 'package:flutter/material.dart';

class DyslipidemiaDashboardController with ChangeNotifier {
  List<Map<String, dynamic>> LipidProfile = [
    {
      "title": "Total Cholesterol",
      "rating": "190 mg/dL",
      "status": "Moderate",
      "color": AppColors.yellow,
      "icon": "assets/images/moderate.png"
    },
    {
      "title": "LDL-C",
      "rating": "120 mg/dL",
      "status": "Normal",
      "color": AppColors.red,
      "icon": "assets/images/high.png"
    },
    {
      "title": "HDL-C",
      "rating": "55 mg/dL",
      "status": "Normal",
      "color": AppColors.maincolor,
      "icon": "assets/images/normal.png",
    },
    {
      "title": "Triglycerides",
      "rating": "140 mg/dL",
      "status": "Moderate",
      "color": AppColors.yellow,
      "icon": "assets/images/moderate.png"
    },
    {
      "title": "Non-HDL Cholesterol",
      "rating": "135 mg/dL",
      "status": "High",
      "color": AppColors.red,
      "icon": "assets/images/high.png"
    },
    {
      "title": "LDL:HDL Ratio",
      "rating": "2.18",
      "status": "Moderate",
      "color": AppColors.yellow,
      "icon": "assets/images/moderate.png"
    },
  ];
  List<Map<String, dynamic>> MetabolicHealth = [
    {
      "title": "HbA1c",
      "rating": "5.6%",
      "status": "Normal",
      "color": AppColors.maincolor,
      "icon": "assets/images/normal.png"
    },
    {
      "title": "Fasting Blood Glucose",
      "rating": "98 mg/dL",
      "status": "Borderline",
      "color": AppColors.orange,
      "icon": "assets/images/borderline.png"
    },
    {
      "title": "Liver Enzymes (ALT/AST)",
      "rating": "25 / 20 U/L",
      "status": "Moderate",
      "color": AppColors.yellow,
      "icon": "assets/images/moderate.png"
    },
    {
      "title": "C-reactive protein (CRP)",
      "rating": "1.5 mg/L",
      "status": "Moderate",
      "color": AppColors.yellow,
      "icon": "assets/images/moderate.png"
    },
  ];
  List<Map<String, dynamic>> PhysicalMetrics = [
    {
      "title": "Weight",
      "rating": "70 kg",
      "status": "Normal",
      "color": AppColors.maincolor,
      "icon": "assets/images/normal.png",
    },
    {
      "title": "BMI",
      "rating": "23.5",
      "status": "Normal",
      "color": AppColors.maincolor,
      "icon": "assets/images/normal.png",
    },
    {
      "title": "Waist Circumference",
      "rating": "85 cm",
      "status": "Normal",
      "color": AppColors.maincolor,
      "icon": "assets/images/normal.png",
    },
    {
      "title": "Body Fat%",
      "rating": "22%",
      "status": "Normal",
      "color": AppColors.maincolor,
      "icon": "assets/images/normal.png",
    },
  ];
  List<Map<String, dynamic>> LifestyleDiet = [
    {
      "title": "Physical Activity (Steps/Mins)",
      "rating": "120 mins / 150 mins",
      "percentage": 0.7,
    },
    {
      "title": "Fiber Intake (Daily)",
      "rating": "20g / 30g (Target)",
      "percentage": 0.3,
    },
    {
      "title": "Saturated Fat Intake (Daily)",
      "rating": "25g / 20g (Target)",
      "percentage": 0.9,
    },
  ];
  List<Map<String, dynamic>> MedicationMonitoring = [
    {
      "title": "Statin Adherence Log",
      "rating": "95% Adherence",
    },
    {
      "title": "Side Effect Tracking",
      "rating": "No new side effects",
    },
  ];
  Map<String, dynamic> getStatusData(double percentage) {
    if (percentage < 0.4) {
      return {
        "status": "Moderate",
        "color": AppColors.yellow,
        "icon": "assets/images/moderate.png"
      };
    } else if (percentage < 0.8) {
      return {
        "status": "Normal",
        "color": AppColors.maincolor,
        "icon": "assets/images/normal.png",
      };
    } else {
      return {
        "status": "High",
        "color": AppColors.red,
        "icon": "assets/images/high.png"
      };
    }
  }
}
