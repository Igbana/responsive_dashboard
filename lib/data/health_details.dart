import 'package:responsive_dashboard/models/health_model.dart';
import 'package:responsive_dashboard/utils/assets.dart';

class HealthDetails {
  static final List<HealthModel> healthData = [
    HealthModel(icon: AppAssets.burn, value: "305", title: "Calories burned"),
    HealthModel(icon: AppAssets.steps, value: "10,903", title: "Steps"),
    HealthModel(icon: AppAssets.distance, value: "7km", title: "Distance"),
    HealthModel(icon: AppAssets.sleep, value: "7h40m", title: "Sleep"),
  ];
}
