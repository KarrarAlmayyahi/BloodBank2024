import 'package:emdad/constants/constants.dart';
import 'package:emdad/view/pages/homescreen.dart';
import 'package:emdad/view/pages/info/info.dart';
import 'package:emdad/view/pages/request_blood/RequestBlood.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({super.key});

  @override
  State<LineChartSample2> createState() => _LineChartSample2State();
}

class AppColors {
  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color.fromARGB(255, 255, 189, 189);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  // static const Color contentColorRed = Color(0xFFE80054);
  static const Color contentColorCyan = Color.fromARGB(255, 231, 78, 85);
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.55,
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
                child: LineChart(
                  showAvg ? avgData() : mainData(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3.5),
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: gradientColors
                      .map((color) => color.withOpacity(0.3))
                      .toList(),
                )),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'اخر تحديث :',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'ManchetteFineExtraBold',
                              color: Color.fromARGB(255, 215, 69, 69),
                            ),
                          ),
                          Text(
                            ' السبت',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'ManchetteFineExtraBold',
                              color: Color.fromARGB(255, 16, 15, 15),
                            ),
                          ),
                          Text(
                            ' 12/5/2024',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'ManchetteFineExtraBold',
                              color: Color.fromARGB(255, 16, 15, 15),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 110,
                            height: 100,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const RequestBlood());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: tertiaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      17), // border radius
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  FaIcon(Icons.notifications_none,
                                      size: 30,
                                      color: Color.fromARGB(
                                          255, 232, 19, 60)), // Icon
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      'طلب دم',
                                      style: TextStyle(
                                          fontFamily: 'ManchetteFineExtraBold',
                                          fontSize: 18,
                                          color:
                                              Color.fromARGB(255, 16, 15, 15)),
                                    ), // Text
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          SizedBox(
                            width: 110,
                            height: 100,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const HomeScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: tertiaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      17), // border radius
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  FaIcon(Icons.search,
                                      size: 30,
                                      color: Color.fromARGB(
                                          255, 232, 19, 60)), // Icon
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      ' البحث عن متبرع ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'ManchetteFineExtraBold',
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(255, 16, 15, 15)),
                                    ), // Text
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 110,
                            height: 100,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() =>  const Info());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: tertiaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      17), // border radius
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  FaIcon(Icons.info_outline,
                                      size: 30,
                                      color: Color.fromARGB(
                                          255, 232, 19, 60)), // Icon
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      ' تعليمات التبرع ',
                                      style: TextStyle(
                                          fontFamily: 'ManchetteFineExtraBold',
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(255, 16, 15, 15)),
                                    ), // Text
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 110,
                            height: 100,
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const HomeScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: tertiaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      17), // border radius
                                ),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  FaIcon(Icons.bloodtype_outlined,
                                      size: 30,
                                      color: Color.fromARGB(
                                          255, 232, 19, 60)), // Icon
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text(
                                      ' بنك الدم ',
                                      style: TextStyle(
                                          fontFamily: 'ManchetteFineExtraBold',
                                          fontSize: 18,
                                          color:
                                              Color.fromARGB(255, 16, 15, 15)),
                                    ), // Text
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'avg',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'ManchetteFineExtraBold',
                color: showAvg ? tertiaryColor.withOpacity(0.5) : tertiaryColor,
              ),
            ),
          ),
        ),
        // const Positioned(left: 50, top: 10, child: Text('dfdfdfdfdfdfdf'))
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontSize: 18,
        fontFamily: 'ManchetteFineExtraBold',
        fontWeight: FontWeight.bold);
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('MAR', style: style);
        break;
      case 5:
        text = const Text('JUN', style: style);
        break;
      case 8:
        text = const Text('SEP', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 18, fontFamily: 'ManchetteFineExtraBold');
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: AppColors.mainGridLineColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        // border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        // border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
