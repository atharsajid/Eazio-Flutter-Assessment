import 'package:eazio_flutter_assessment/utils/app_export.dart';

class AttendanceGraphWidget extends StatelessWidget {
  const AttendanceGraphWidget({super.key});
  HomeScreenController get controller => Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getSize(175),
      width: MediaQuery.of(context).size.width * 0.72,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,
        primaryXAxis: const CategoryAxis(
          majorGridLines: MajorGridLines(width: 0),
          majorTickLines: MajorTickLines(size: 0),
          axisLine: AxisLine(width: 0.4),
        ),
        primaryYAxis: const NumericAxis(
            axisLine: AxisLine(width: 0),
            maximum: 1000,
            minimum: 0,
            interval: 200,
            majorGridLines: MajorGridLines(width: 0.6),
            majorTickLines: MajorTickLines(size: 0)),
        series: <StackedColumnSeries<ChartDataModel, String>>[
          StackedColumnSeries<ChartDataModel, String>(
              dataSource: controller.chartData,
              xValueMapper: (ChartDataModel sales, _) => sales.day,
              yValueMapper: (ChartDataModel sales, _) => sales.onTime,
              color: AppColors.green,
              width: 0.4,
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
              name: AppStrings.onTime),
          StackedColumnSeries<ChartDataModel, String>(
              dataSource: controller.chartData,
              xValueMapper: (ChartDataModel sales, _) => sales.day,
              yValueMapper: (ChartDataModel sales, _) => sales.late,
              color: AppColors.orange400,
              width: 0.4,
              name: AppStrings.late),
          StackedColumnSeries<ChartDataModel, String>(
              dataSource: controller.chartData,
              xValueMapper: (ChartDataModel sales, _) => sales.day,
              yValueMapper: (ChartDataModel sales, _) => sales.absents,
              color: AppColors.lightRed,
              width: 0.4,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              name: AppStrings.absents),
        ],
      ),
    );
  }
}
