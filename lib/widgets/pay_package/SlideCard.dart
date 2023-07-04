import 'package:flutter/material.dart';
import 'package:goods_accounting/widgets/button.dart';

const _horizontalPadding = 60.0;
const _carouselItemMargin = 8.0;

class SlideCard extends StatefulWidget {
  @override
  State<SlideCard> createState() => _SlideCardState();
}

class _SlideCardState extends State<SlideCard> {
  PageController? pageController;
  int currentPage = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final width = MediaQuery.of(context).size.width;
    final padding = (_horizontalPadding * 2) - (_carouselItemMargin * 2);
    pageController = PageController(
      initialPage: currentPage,
      viewportFraction: (width - padding) / width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      height: 500,
      child: PageView(
        onPageChanged: (index) {
          setState(() => currentPage = index);
        },
        controller: pageController,
        children: <Widget>[
          for (int i = 0; i < 5; i++) buildItem(i),
        ],
      ),
    );
  }

  Widget buildItem(int index) {
    return AnimatedBuilder(
      animation: pageController!,
      builder: (context, child) {
        double value;
        if (pageController!.position.haveDimensions) {
          value = pageController!.page! - index;
        } else {
          // If haveDimensions is false, use _currentPage to calculate value.
          value = (currentPage - index).toDouble();
        }
        value = (1 - (value.abs() * .3)).clamp(0, 1).toDouble();
        value = Curves.easeOut.transform(value);

        return Center(
          child: Transform(
            transform: Matrix4.diagonal3Values(1.0, value, 1.0),
            alignment: Alignment.center,
            child: Container(
              height: 350,
              width: 250,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    spreadRadius: 1.0,
                    blurRadius: 6.0
                  ),
                ],
              ),
              child: Column(
                children:  [
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: Center(
                        child: Text(
                          "6 Month",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Name",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 20,),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("Lorem dolor sit amet\nconsectetur adipisicing elit,\nsee do.", style: TextStyle(),textAlign: TextAlign.center,),
                        ),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Button(text: "BAY NOW", onPressed: (){}, isColor: true,),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
