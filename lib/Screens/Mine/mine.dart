import 'package:dailyplus/Constants/colors.dart';
import 'package:dailyplus/Widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MineScreen extends StatefulWidget {
  const MineScreen({super.key});

  @override
  State<MineScreen> createState() => _MineScreenState();
}

class _MineScreenState extends State<MineScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyCustomColors().kBGColor,
      appBar: AppBar(
        backgroundColor: MyCustomColors().kBGColor,
        surfaceTintColor: MyCustomColors().kBGColor,
        shadowColor: MyCustomColors().kBGColor,
        elevation: 3,
        actions: [
          SvgPicture.asset(
            'assets/icons/settings.svg',
            width: 30,
          ),
          SizedBox(
            width: 8,
          ),
        ],
        centerTitle: false,
        title: mytext(
          'Mine',
          24,
          FontWeight.w400,
          Colors.black,
          TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyCustomColors().kPrimaryColor,
                    ),
                    child: Center(
                      child: mytext(
                        '2\nCompleted Tasks',
                        16,
                        FontWeight.w400,
                        Colors.black,
                        TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: MyCustomColors().kPrimaryColor,
                    ),
                    child: Center(
                      child: mytext(
                        '1\nPending Tasks',
                        16,
                        FontWeight.w400,
                        Colors.black,
                        TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ClipRect(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 280,
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xff8EB3CE),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mytext(
                      'Daily Completed',
                      20,
                      FontWeight.w400,
                      MyCustomColors().kSecondryColor,
                      TextAlign.start,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        mytext(
                          '< 02/09 - 02/15 >',
                          13,
                          FontWeight.w400,
                          MyCustomColors().kBlackColor,
                          TextAlign.start,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 200,
                      child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(
                          labelRotation: -45,
                          labelStyle: TextStyle(fontSize: 12),
                          majorGridLines: MajorGridLines(
                            width: 0,
                          ),
                        ),
                        primaryYAxis: NumericAxis(
                          minimum: 0,
                          maximum: 10,
                          interval: 2.5,
                          labelFormat: '{value}',
                          axisLabelFormatter: (AxisLabelRenderDetails details) {
                            if (details.value == 0 ||
                                details.value == 5 ||
                                details.value == 10) {
                              return ChartAxisLabel(
                                  details.text, details.textStyle);
                            }
                            return ChartAxisLabel('', details.textStyle);
                          },
                          majorGridLines: MajorGridLines(
                            width: 1,
                            color: Colors.grey.withOpacity(0.5),
                            dashArray: <double>[5, 5],
                          ),
                          minorGridLines: MinorGridLines(
                            width: 1,
                            color: Colors.grey.withOpacity(0.3),
                            dashArray: <double>[5, 5],
                          ),
                        ),
                        series: <CartesianSeries<_ChartData, String>>[
                          ColumnSeries<_ChartData, String>(
                            dataSource: data,
                            xValueMapper: (_ChartData data, _) => data.x,
                            yValueMapper: (_ChartData data, _) => data.y,
                            pointColorMapper: (_ChartData data, _) =>
                                data.color,
                            name: 'Daily',
                            enableTooltip: false,
                            width: 0.5,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ClipRect(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 112,
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xff8EB3CE),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mytext(
                      'Next 7 Days',
                      12,
                      FontWeight.w400,
                      Colors.black,
                      TextAlign.start,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/uncheck.svg',
                              fit: BoxFit.fill,
                              width: 38,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/drink.svg',
                                      fit: BoxFit.fill,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    mytext(
                                      'Drink water, keep heality',
                                      16,
                                      FontWeight.w400,
                                      Colors.black,
                                      TextAlign.start,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    mytext(
                                      ' 1/5 Times',
                                      12,
                                      FontWeight.w400,
                                      Colors.black,
                                      TextAlign.start,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/noti.svg',
                                      fit: BoxFit.fill,
                                      width: 16,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    SvgPicture.asset(
                                      'assets/icons/reuse.svg',
                                      fit: BoxFit.fill,
                                      width: 16,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icons/next.svg',
                          fit: BoxFit.fill,
                          width: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}

final List<_ChartData> data = [
  _ChartData('Sun', 0, Color(0xffFF928A)),
  _ChartData('Mon', 0, Color(0xff8979FF)),
  _ChartData('Tue', 0, Color(0xff3CC3DF)),
  _ChartData('Wed', 0, Color(0xffFF928A)),
  _ChartData('Thu', 0, Color(0xff8979FF)),
  _ChartData('Fri', 0, Color(0xff3CC3DF)),
  _ChartData('Sat', 1, Color(0xffFF928A)),
];
