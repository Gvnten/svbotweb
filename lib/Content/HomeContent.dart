import 'package:bot_web/redux/app_state.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shimmer/shimmer.dart';

class HomeContent extends StatelessWidget {
  final List<dynamic> testList = [
    {
      "name": "Mada",
      "id": "7",
      "gameName": "Soul",
    },
    {
      "name": "Tsee9ii",
      "id": "6",
      "gameName": "Virus",
    },
    {
      "name": "Dorjee",
      "id": "66",
      "gameName": "Ddorj",
    },
    {
      "name": "Sony",
      "id": "0310",
      "gameName": "Soniikaa",
    },
    {
      "name": "Tsagaanaa",
      "id": "9",
      "gameName": "Habiasa",
    },
    {
      "name": "Ider",
      "id": "555",
      "gameName": "Candy",
    },
    {
      "name": "Temka",
      "id": "45",
      "gameName": "KMT",
    },
    {
      "name": "Usku",
      "id": "405",
      "gameName": "Usku405",
    },
    {
      "name": "Uujig",
      "id": "78",
      "gameName": "Uujiguug",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (constext, state) => SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          color: Color(0xff003566),
          child: new Wrap(
            alignment: WrapAlignment.center,
            children: [
              Container(
                color: Color(0xFF0D3D69),
                margin: const EdgeInsets.only(
                  top: 25,
                ),
                width: MediaQuery.of(context).size.width - 100,
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Image(
                      height: 400,
                      width: 450,
                      image: new AssetImage('assets/images/intro.png'),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 550,
                          height: 300,
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '???????????? ??????',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'RobotoMono',
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '            ?????????????? ?????? ?????????????? ?????????? ???????????????? ?????????? /???????????????????? ??????????????????/-?????? ???????????? ?????????? ?????????????????? ???????? ?????????????????? ?????????????? ???????????????????? ?????????? ?????????????????? ?????? ?????????????????????????? ?????????????????? 24/7 ???????????????????? ?????????????? ?????????????? ?????? ?????? ?????????????? ???????? ?????????????? ???? ???????????????? ?????????????????? ???????? ???????? ?????????????? ?????????? ???????? ?????????????? ???????????? ????.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'RobotoMono',
                                  height: 2.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                ),
                child: Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.orange,
                  child: Text(
                    "?????????????? ??????",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Wrap(
                  spacing: 21.0,
                  runSpacing: 21.0,
                  alignment: WrapAlignment.center,
                  children: [
                    new Card(
                      color: Color(0xffF6F7FB),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 30,
                          bottom: 30,
                        ),
                        alignment: Alignment.center,
                        width: 400,
                        height: 200,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                              width: 100,
                              height: 80,
                              fit: BoxFit.contain,
                              image: NetworkImage(
                                  'https://scontent.xx.fbcdn.net/v/t1.15752-0/p206x206/187582470_837835203752323_7335086204526666969_n.png?_nc_cat=105&ccb=1-3&_nc_sid=58c789&_nc_ohc=79DyEwa5JwoAX8hIdZP&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&tp=30&oh=a6ac6bb547c9c38bbbee9c4d36bb5d5d&oe=60D9F09D'),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              '???????????? ???????? ?????????????????? ?????????????? ???????????????? ???????????? ????????????',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Card(
                      color: Color(0xffF6F7FB),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 30,
                          bottom: 30,
                        ),
                        alignment: Alignment.center,
                        width: 400,
                        height: 200,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                              width: 100,
                              height: 80,
                              image: NetworkImage(
                                  'https://scontent.xx.fbcdn.net/v/t1.15752-0/p206x206/101061168_2748439705442756_5181172581360730112_n.png?_nc_cat=109&ccb=1-3&_nc_sid=58c789&_nc_ohc=y3r_fTeYTyUAX-wYgcZ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&tp=30&oh=816f260d90bac3641f2382a5732d78e4&oe=60D9304B'),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              '?????????? ?????????????? ???????????????????????? ???????????? ???????????????????? ??????????????????',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Card(
                      color: Color(0xffF6F7FB),
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 30,
                          bottom: 30,
                        ),
                        alignment: Alignment.center,
                        width: 400,
                        height: 200,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image(
                              width: 100,
                              height: 80,
                              image: NetworkImage(
                                  'https://scontent.xx.fbcdn.net/v/t1.15752-0/p206x206/107827414_207065213984167_6067838364857311100_n.png?_nc_cat=110&ccb=1-3&_nc_sid=58c789&_nc_ohc=mkRwr1GQfDYAX_zyX40&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&tp=30&oh=a45ca1625bf019180b05f5cd8cdd0174&oe=60D7B9C8'),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Text(
                              '???????????????? ?????????????? ?????????????? ???????????????? ?????????? ?????????????? ?????????? ???????????????? ???????????????????? ??????????',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                ),
                child: Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.orange,
                  child: Text(
                    "?????????? ????????????????",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                ),
              ),
              state.newsList.length == 0
                  ? Container(
                      color: Colors.blue,
                      child: new CarouselSlider.builder(
                        itemCount: (state.newsList.length / 3).round(),
                        itemBuilder: (context, index, realIndex) {
                          final int first = index * 3;
                          final int second = first + 1;
                          final int third = second + 1;
                          return Row(
                            children: [first, second, third].map((idx) {
                              return Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  color: Colors.amber,
                                  width: 400,
                                  height: 400,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Image(
                                      //   height: 200,
                                      //   width: 400,
                                      //   image: NetworkImage(
                                      //     testList[index]['cover'] ?? '',
                                      //   ),
                                      // ),
                                      Container(
                                        child: Align(
                                          child: Html(
                                            data: state.newsList[idx]['title'],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Html(
                                          data: state.newsList[idx]['id'],
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Html(
                                          data: state.newsList[idx]['gameName'],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        },
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          height: 400.0,
                        ),
                      ),
                    )
                  : new Container(
                      width: MediaQuery.of(context).size.width - 100,
                      height: 200,
                      margin: const EdgeInsets.only(top: 25, bottom: 15),
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Icon(
                            Icons.warning,
                            color: Colors.grey,
                          ),
                          new SizedBox(
                            width: 7,
                          ),
                          new Text(
                            '???????????????? ?????????? ?????????????? ??????????.',
                            style: TextStyle(
                                //color: Colors.amber,
                                ),
                          ),
                        ],
                      ),
                    ),
              new Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  bottom: 15,
                ),
                child: Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.orange,
                  child: Text(
                    "?????????????????????????? ??????????????",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                ),
              ),
              new Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width - 100,
                child: state.feedbackList.length != 0
                    ? new DataTable(
                        horizontalMargin: 20.0,
                        columnSpacing: 7.0,
                        columns: [
                          DataColumn(
                            label: Text(
                              "????????????",
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "??????????????",
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              "??????????????",
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                              ),
                            ),
                          ),
                        ],
                        rows: state.feedbackList
                            .map<DataRow>(
                              (element) => DataRow(
                                cells: [
                                  DataCell(
                                    Text(
                                      element['question'],
                                      style: TextStyle(
                                        fontFamily: 'RobotoMono',
                                      ),
                                      textAlign: TextAlign.start,
                                      softWrap: true,
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      element['answer'],
                                      style: TextStyle(
                                        fontFamily: 'RobotoMono',
                                      ),
                                      textAlign: TextAlign.start,
                                      softWrap: true,
                                    ),
                                  ),
                                  DataCell(
                                    RatingBarIndicator(
                                      rating: double.parse(
                                        element['rating'],
                                      ),
                                      itemSize: 25,
                                      itemBuilder: (context, index) =>
                                          Icon(Icons.star, color: Colors.amber),
                                    ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      )
                    : Container(
                        width: MediaQuery.of(context).size.width - 100,
                        margin: const EdgeInsets.only(top: 25, bottom: 15),
                        alignment: Alignment.center,
                        height: 200,
                        color: Colors.white70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.warning,
                              color: Colors.grey,
                            ),
                            new SizedBox(
                              width: 7,
                            ),
                            Text(
                              '???????????????? ?????????????? ?????????????? ??????????.',
                              style: TextStyle(
                                  //color: Colors.amber,
                                  ),
                            ),
                          ],
                        ),
                      ),
              ),
              ClipPath(
                clipper: null, //new FooterClipper(),
                child: new Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 30),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xff1278bd),
                  child: SingleChildScrollView(
                    child: new Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 21,
                      children: [
                        Card(
                          color: Color(0xff003566),
                          elevation: 0,
                          child: Container(
                            width: 400,
                            height: 140,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xFFCA5B68),
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  '???????????????? ????????????, 22 ??????????, ????????',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Color(0xff003566),
                          elevation: 0,
                          child: Container(
                            width: 400,
                            height: 140,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Color(0xFFCA5B68),
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'zolzaya@must.edu.mn',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'tsee9iii@gmail.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'amargun3@gmail.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Color(0xff003566),
                          elevation: 0,
                          child: Container(
                            width: 400,
                            height: 140,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 40,
                                  color: Color(0xFFCA5B68),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  '+97699228822',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '+97685288218',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '+97686113769',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 15,
                          ),
                          child: Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.pink,
                            child: Text(
                              'Copyright ?? 2021 ???????????? (PhD) ??.?????????????? ?????????????????????? ??.??????????????????, ??.??????????????',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
