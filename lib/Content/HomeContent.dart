import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shimmer/shimmer.dart';

class HomeContent extends StatelessWidget {
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
                margin: const EdgeInsets.only(top: 25, bottom: 25),
                width: MediaQuery.of(context).size.width - 100,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                    ),
                    Image(
                      height: 400,
                      width: 450,
                      image: new AssetImage('assets/images/intro.png'),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 550,
                          height: 300,
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Хуульч бот',
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
                                '            Хуулийн нэг өгөгдөл болох Зөрчлийн тухай /шинэчилсэн найруулга/-аас гаргаж авсан мэдлэгийн санг ашигласан ухаалаг үйлчилгээг ботод суурилсан веб аппликэйшнаар дамжуулан 24/7 үйлчилгээг иргэдэд үзүүлэх мөн цаг хугацаа орон зайнаас үл хамааран хэрэглэгч бүрд тэгш үйлчлэх хууль зүйн ухаалаг систем юм.',
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
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.orange,
                  child: Text(
                    "Шинэлэг тал",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                ),
              ),
              Wrap(
                //alignment: WrapAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 25,
                      bottom: 25,
                    ),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width - 100,
                    child: Wrap(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        new Card(
                          margin: const EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                            right: 0,
                            left: 0,
                          ),
                          color: Color(0xffF6F7FB),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xff1278bd),
                                ),
                              ),
                            ),
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
                                  'Хиймэл оюун ашигласан ухаалаг харилцан ярианы чатбот',
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
                        SizedBox(
                          width: 115,
                          height: 40,
                        ),
                        new Card(
                          margin: const EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                            right: 0,
                            left: 0,
                          ),
                          color: Color(0xffF6F7FB),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xff1278bd),
                                ),
                              ),
                            ),
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
                                  'Бусад хуулийн өгөгдлүүдийг сургаж ажиллуулах боломжтой',
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
                        SizedBox(
                          width: 115,
                          height: 40,
                        ),
                        new Card(
                          margin: const EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                            right: 0,
                            left: 0,
                          ),
                          color: Color(0xffF6F7FB),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xff1278bd),
                                ),
                              ),
                            ),
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
                                  'Одоогоор монголд хуулийн зөвлөгөө өгдөг програм эсвэл платформ нэвтрээгүй байна',
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
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                child: Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.orange,
                  child: Text(
                    "Хэрэглэгчдийн үнэлгээ",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                ),
              ),
              new Container(
                //alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 15),
                color: Colors.white,
                width: MediaQuery.of(context).size.width - 100,
                child: state.feedbackList != null
                    ? new DataTable(
                        columns: [
                          DataColumn(
                            label: Text("Асуулт"),
                          ),
                          DataColumn(
                            label: Text("Хариулт"),
                          ),
                          DataColumn(
                            label: Text("Үнэлгээ"),
                          ),
                        ],
                        rows: state.feedbackList
                            .map<DataRow>(
                              (element) => DataRow(
                                cells: [
                                  DataCell(
                                    Text(element['question']),
                                  ),
                                  DataCell(
                                    Text(element['answer']),
                                  ),
                                  DataCell(
                                    RatingBarIndicator(
                                      rating: double.parse(element['rating']),
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
                              'Одоогоор үнэлгээ хийгдсэн асуулт байхгүй байна.',
                              style: TextStyle(
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff1278bd),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFFCA5B68),
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Баянзүрх дүүрэг, 22 хороо, МХТС',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Color(0xFFCA5B68),
                          size: 40,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'zolzaya@gmail.com',
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
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          size: 40,
                          color: Color(0xFFCA5B68),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                      ],
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.white,
                      highlightColor: Colors.pink,
                      child: Text('Copyright © 2021 ZATS'),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
