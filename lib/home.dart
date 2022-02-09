import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final pxwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: Text(
      //     'Home',
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: ListView(
        controller: scrollController,
        children: [
          Container(
            height:
                pxwidth < 767 ? MediaQuery.of(context).size.height / 2 : 600,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 169, 175, 252),
              Color.fromARGB(255, 190, 218, 241)
            ])),
            child: Column(
              children: [
                pxwidth >= 767
                    ? webMode(pxwidth)
                    : Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Lottie.network(
                                  'https://assets3.lottiefiles.com/packages/lf20_9e8yoqkm.json',
                                  frameRate: FrameRate.max),
                            ),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(
                                  left: pxwidth <= 767 ? 0 : 50),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnimatedOpacity(
                                    opacity: 1,
                                    duration: Duration(seconds: 10),
                                    child: SelectableText(
                                      'Akshay Njarangal',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: pxwidth <= 767
                                              ? pxwidth / 10
                                              : pxwidth / 30),
                                    ),
                                  ),
                                  SelectableText(
                                    'Flutter Developer | UI/UX Designer',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: pxwidth <= 767
                                            ? pxwidth / 30
                                            : pxwidth / 80),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: CupertinoButton(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        color: Colors.white,
                                        onPressed: () {
                                          final double end = scrollController
                                              .position.maxScrollExtent;
                                          scrollController.animateTo(end,
                                              duration: Duration(seconds: 1),
                                              curve: Curves.easeIn);
                                        },
                                        child: Text(
                                          'Connect with me',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: pxwidth <= 767
                                                  ? pxwidth / 40
                                                  : pxwidth / 80,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: SelectableText(
                'Development',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: pxwidth <= 767 ? pxwidth / 20 : pxwidth / 30,
                    color: Color.fromARGB(255, 31, 48, 122)),
              ),
            ),
          ),
          Center(
            child: Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_u4jjb9bd.json',
                width: pxwidth <= 767 ? 200 : 300,
                frameRate: FrameRate.max),
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Center(
                      child: SelectableText('Android',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                pxwidth <= 767 ? pxwidth / 20 : pxwidth / 45,
                          )),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Center(
                      child: SelectableText('iOS',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                pxwidth <= 767 ? pxwidth / 20 : pxwidth / 45,
                          )),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Center(
                      child: SelectableText('Web',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                pxwidth <= 767 ? pxwidth / 20 : pxwidth / 45,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(221, 12, 10, 37),
            child: Center(
              child: Column(
                children: [
                  SelectableText(
                    'Connect with me',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: pxwidth <= 767 ? pxwidth / 30 : pxwidth / 70),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            launch(
                              'https://linkedin.com/in/akshay-njarangal',
                            );
                          },
                          child: SvgPicture.asset(
                            'assets/in.svg',
                            height: 30,
                            width: 30,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            launch('https://github.com/akshaynjarangal/');
                          },
                          child: SvgPicture.string(
                            '<svg xmlns="http://www.w3.org/2000/svg" height="800" width="1200" viewBox="-6.39108 -10.38875 55.38936 62.3325"><g fill="#fff"><path d="M21.3035 0C9.5395 0 0 9.5373 0 21.3035c0 9.4122 6.1041 17.3976 14.5687 20.2146 1.0646.1972 1.4555-.4622 1.4555-1.0249 0-.5076-.0198-2.1861-.0289-3.9662-5.9266 1.2887-7.1772-2.5136-7.1772-2.5136-.9691-2.462-2.3654-3.1171-2.3654-3.1171-1.9329-1.3222.1457-1.295.1457-1.295 2.1392.1502 3.2656 2.1956 3.2656 2.1956 1.9001 3.2565 4.9837 2.315 6.1994 1.7706.1916-1.3765.7433-2.3167 1.3526-2.8487-4.7319-.5383-9.706-2.3653-9.706-10.5283 0-2.3255.8322-4.2259 2.195-5.7178-.2212-.537-.9504-2.7037.2067-5.638 0 0 1.789-.5723 5.8596 2.184 1.6994-.472 3.5218-.7088 5.3323-.7172 1.8104.008 3.6343.2451 5.3368.7172 4.0661-2.7563 5.8526-2.184 5.8526-2.184 1.1596 2.9343.4304 5.101.2092 5.638 1.366 1.4919 2.1921 3.3923 2.1921 5.7178 0 8.1827-4.9837 9.984-9.7275 10.5114.7642.6611 1.445 1.9576 1.445 3.9451 0 2.8505-.0243 5.1446-.0243 5.8462 0 .5673.3831 1.2316 1.463 1.0224 8.4603-2.8201 14.5566-10.8028 14.5566-20.212C42.6071 9.5372 33.0691 0 21.3036 0" fill-rule="evenodd"/><path d="M8.0689 30.587c-.047.1061-.2135.1379-.3651.0649-.155-.0695-.2413-.2138-.1913-.32.046-.1087.2124-.139.367-.0663.1545.0695.2426.2152.1894.3214m.863.9625c-.1016.0942-.3006.0504-.435-.0984-.1397-.1485-.1655-.3475-.0624-.4427.1048-.0942.2974-.0501.4367.0984.1397.1503.1669.3475.0607.4427m.8399 1.2268c-.1305.091-.3443.006-.4763-.1834-.1305-.1898-.1305-.417.003-.508.132-.091.3426-.009.4763.1788.1302.1926.1302.4198-.003.5126m1.1506 1.1855c-.1167.1287-.3654.0942-.5475-.0815-.1862-.1718-.238-.4156-.1213-.5444.1185-.129.3686-.0928.552.0815.185.1715.241.417.1168.5444m1.5876.6882c-.052.167-.291.2424-.5324.1715-.241-.073-.3986-.268-.35-.4367.0502-.1683.2908-.247.5338-.1711.2406.0727.3987.2667.3486.4364m1.7435.1275c.006.1757-.1986.3214-.4519.3245-.2547.006-.461-.1365-.4639-.3094 0-.1774.2004-.3213.4547-.326.2533-.005.4611.1366.4611.3109m1.6223-.276c.0303.171-.1457.3471-.3972.394-.2473.0455-.4763-.0607-.5077-.2303-.0307-.1757.1482-.3517.3955-.3972.2519-.0437.4773.0593.5094.2335"/></g></svg>',
                            height: 30,
                            width: 30,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            launch(
                                'https://www.instagram.com/akshaynjarangal/');
                          },
                          child: SvgPicture.string(
                            '<svg xmlns="http://www.w3.org/2000/svg" height="800" width="1200" viewBox="-100.7682 -167.947 873.3244 1007.682"><g fill="#fff"><path d="M335.895 0c-91.224 0-102.663.387-138.49 2.021-35.752 1.631-60.169 7.31-81.535 15.612-22.088 8.584-40.82 20.07-59.493 38.743-18.674 18.673-30.16 37.407-38.743 59.495C9.33 137.236 3.653 161.653 2.02 197.405.386 233.232 0 244.671 0 335.895c0 91.222.386 102.661 2.02 138.488 1.633 35.752 7.31 60.169 15.614 81.534 8.584 22.088 20.07 40.82 38.743 59.495 18.674 18.673 37.405 30.159 59.493 38.743 21.366 8.302 45.783 13.98 81.535 15.612 35.827 1.634 47.266 2.021 138.49 2.021 91.222 0 102.661-.387 138.488-2.021 35.752-1.631 60.169-7.31 81.534-15.612 22.088-8.584 40.82-20.07 59.495-38.743 18.673-18.675 30.159-37.407 38.743-59.495 8.302-21.365 13.981-45.782 15.612-81.534 1.634-35.827 2.021-47.266 2.021-138.488 0-91.224-.387-102.663-2.021-138.49-1.631-35.752-7.31-60.169-15.612-81.534-8.584-22.088-20.07-40.822-38.743-59.495-18.675-18.673-37.407-30.159-59.495-38.743-21.365-8.302-45.782-13.981-81.534-15.612C438.556.387 427.117 0 335.895 0zm0 60.521c89.686 0 100.31.343 135.729 1.959 32.75 1.493 50.535 6.965 62.37 11.565 15.68 6.094 26.869 13.372 38.622 25.126 11.755 11.754 19.033 22.944 25.127 38.622 4.6 11.836 10.072 29.622 11.565 62.371 1.616 35.419 1.959 46.043 1.959 135.73 0 89.687-.343 100.311-1.959 135.73-1.493 32.75-6.965 50.535-11.565 62.37-6.094 15.68-13.372 26.869-25.127 38.622-11.753 11.755-22.943 19.033-38.621 25.127-11.836 4.6-29.622 10.072-62.371 11.565-35.413 1.616-46.036 1.959-135.73 1.959-89.694 0-100.315-.343-135.73-1.96-32.75-1.492-50.535-6.964-62.37-11.564-15.68-6.094-26.869-13.372-38.622-25.127-11.754-11.753-19.033-22.943-25.127-38.621-4.6-11.836-10.071-29.622-11.565-62.371-1.616-35.419-1.959-46.043-1.959-135.73 0-89.687.343-100.311 1.959-135.73 1.494-32.75 6.965-50.535 11.565-62.37 6.094-15.68 13.373-26.869 25.126-38.622 11.754-11.755 22.944-19.033 38.622-25.127 11.836-4.6 29.622-10.072 62.371-11.565 35.419-1.616 46.043-1.959 135.73-1.959"/><path d="M335.895 447.859c-61.838 0-111.966-50.128-111.966-111.964 0-61.838 50.128-111.966 111.966-111.966 61.836 0 111.964 50.128 111.964 111.966 0 61.836-50.128 111.964-111.964 111.964zm0-284.451c-95.263 0-172.487 77.224-172.487 172.487 0 95.261 77.224 172.485 172.487 172.485 95.261 0 172.485-77.224 172.485-172.485 0-95.263-77.224-172.487-172.485-172.487m219.608-6.815c0 22.262-18.047 40.307-40.308 40.307-22.26 0-40.307-18.045-40.307-40.307 0-22.261 18.047-40.308 40.307-40.308 22.261 0 40.308 18.047 40.308 40.308"/></g></svg>',
                            height: 30,
                            width: 30,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            launch('https://twitter.com/akshaynjarangal');
                          },
                          child: SvgPicture.string(
                            '<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="none"><circle cx="10.999" cy="11" r="9.167" fill="#fff" opacity=".1"/><path fill="#fff" fill-rule="evenodd" d="M17.05 7.658c-.404.18-.84.3-1.296.355.466-.279.824-.721.992-1.248-.435.259-.92.446-1.433.548a2.257 2.257 0 0 0-3.845 2.058 6.404 6.404 0 0 1-4.652-2.358 2.256 2.256 0 0 0 .699 3.013 2.257 2.257 0 0 1-1.023-.282v.028a2.26 2.26 0 0 0 1.81 2.213 2.235 2.235 0 0 1-1.019.039 2.258 2.258 0 0 0 2.108 1.567 4.527 4.527 0 0 1-3.341.934 6.392 6.392 0 0 0 3.46 1.014c4.15 0 6.42-3.438 6.42-6.42 0-.098-.002-.196-.007-.292a4.588 4.588 0 0 0 1.127-1.169z" clip-rule="evenodd" opacity=".8"/></svg>',
                            height: 30,
                            width: 30,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    'made in kerala.',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: pxwidth <= 767 ? pxwidth / 30 : pxwidth / 80),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    '© Akshay Njarangal 2022',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize:
                            pxwidth <= 767 ? pxwidth / 40 : pxwidth / 120),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded webMode(double pxwidth) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: 1,
                  duration: Duration(seconds: 10),
                  child: SelectableText(
                    'Akshay Njarangal',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: pxwidth / 30),
                  ),
                ),
                SelectableText(
                  'Flutter Developer | UI/UX Designer',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: pxwidth / 80),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: CupertinoButton(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.white,
                      onPressed: () {
                        final double end =
                            scrollController.position.maxScrollExtent;
                        scrollController.animateTo(end,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeIn);
                      },
                      child: Text(
                        'Connect with me',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                pxwidth <= 767 ? pxwidth / 40 : pxwidth / 80,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_9e8yoqkm.json',
                frameRate: FrameRate.max),
          ),
        ],
      ),
    );
  }
}
