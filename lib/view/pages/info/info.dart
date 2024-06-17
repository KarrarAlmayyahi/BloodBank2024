import 'package:carousel_slider/carousel_slider.dart';
import 'package:emdad/constants/constants.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: const Text(' المبادى التوجيهية للتبرع ',
            style: TextStyle(
              fontFamily: 'ManchetteFineExtraBold',
              fontSize: 25,
            )),
      ),
      body: Container(
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 50, bottom: 10),
              child: Text('كيف تكون مستعد للتبرع',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'ManchetteFineExtraBold',
                  )),
            ),
            const CarouselWithIndicator(),
            const Padding(
              padding: EdgeInsets.only(top: 35, right: 45),
              child: Text(
                'إرشادات عامة للتبرع بالدم',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'ManchetteFineExtraBold',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              decoration: BoxDecoration(
                color: tertiaryColor,
                borderRadius: const BorderRadius.all((Radius.circular(15))),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 147, 146, 146)
                        .withOpacity(0.1),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AdvancedTimeline(
                  items: [
                    AdvancedTimelineItem(
                      date: '2024-05-25',
                      description:
                          'أن يكون عمرك 18 عامًا على الأقل (16 عامًا  بموافقة الوالدين ).',
                      isEmphasized: true,
                    ),
                    AdvancedTimelineItem(
                      date: '2024-02-22',
                      description: 'يجب ان تكون بصحة جيدة ولاتعاني من اي مرض',
                      isEmphasized: false,
                    ),
                    AdvancedTimelineItem(
                      date: '2024-02-22',
                      description: 'يجب اني يكون وزنك على الاقل 70 كيلوا ',
                      isEmphasized: false,
                    ),
                    AdvancedTimelineItem(
                      date: '2024-02-22',
                      description: 'لم تتبرع بالدم خلال آخر 56 يومًا.',
                      isEmphasized: false,
                    ),
                    AdvancedTimelineItem(
                      date: '2024-02-22',
                      description:
                          'أن تكون نسبة الهيموجلوبين للرجال من 14- 17 جم، وللنساء من 12-14 جم.',
                      isEmphasized: false,
                    ),
                    AdvancedTimelineItem(
                      date: '2024-02-22',
                      description: 'أن يكون عمر المتبرع من 18-65 سنة.',
                      isEmphasized: false,
                    ),
                    AdvancedTimelineItem(
                      date: '2024-02-22',
                      description: 'يجب ان تكون بصحة جيدة ولاتعاني من اي مرض',
                      isEmphasized: false,
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

// timeline Class
class AdvancedTimelineItem {
  final String date;
  final String description;
  final bool isEmphasized;

  AdvancedTimelineItem({
    required this.date,
    required this.description,
    this.isEmphasized = false,
  });
}

class AdvancedTimeline extends StatelessWidget {
  final List<AdvancedTimelineItem> items;

  const AdvancedTimeline({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          leading: item.isEmphasized
              ? const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 15,
                    ),
                    Expanded(
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                  ],
                )
              : const Column(
                  children: [
                    Icon(Icons.circle, color: Colors.grey, size: 15),
                    Expanded(
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
          title: Text(
            item.description,
            style: const TextStyle(
                fontSize: 18,
                fontFamily: 'ManchetteFineSemiBold',
                color: Color.fromARGB(255, 62, 62, 62)),
          ),
        );
      },
    );
  }
}

//Carousel Slider
class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  final List<Widget> imgList = [
    const ItemCard(Icons.local_drink_outlined, 'الخطوة 1', ' اشرب سوائل اضافية',
        'اشرب حوالي لتر واحد من كل علبة'),
    const ItemCard(
        Icons.local_drink_outlined,
        'الخطوة 2',
        ' تجنب الاكل لمدة ساعة على الاقل',
        ' تجنب الاكل على الاقل ساعه او اكثر قبل عملية التبرع بالدم '),
    const ItemCard(Icons.local_drink_outlined, 'الخطوة 3',
        ' ابتعد عن القلق النفسي ', 'اشرب حوالي لتر واحد من كل علبة'),
    const ItemCard(
        Icons.local_drink_outlined,
        'الخطوة 4',
        '  يرجى عمل فحص كامل قبل عملية التبرع ',
        'اشرب حوالي لتر واحد من كل علبة اشرب حوالي لتر واحد من كل علبة اشرب حوالي لتر واحد من كل علبة'),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: imgList,
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ?  primaryColor
                      : const Color.fromARGB(255, 217, 217, 217),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final IconData imagePath;
  final String title;
  final String text;
  final String description;

  const ItemCard(this.imagePath, this.title, this.text, this.description,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        color: tertiaryColor,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all((Radius.circular(50))),
                            boxShadow: [
                              BoxShadow(
                                color:  primaryColor
                                    .withOpacity(0.85),
                              ),
                            ],
                          ),
                          child: Icon(
                            imagePath,
                            color: tertiaryColor,
                            size: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'ManchetteFineMedium',
                                      color: primaryColor)),
                              SizedBox(
                                width: 200,
                                child: Text(text,
                                    style: const TextStyle(
                                        fontFamily: 'ManchetteFineMedium',
                                        fontSize: 15,
                                        color:
                                            primaryColor)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: Text(description,
                          style: const TextStyle(
                              fontFamily: 'ManchetteFineMedium',
                              fontSize: 15,
                              color: Color.fromARGB(255, 6, 6, 6))),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
