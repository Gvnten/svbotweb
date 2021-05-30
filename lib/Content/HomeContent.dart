import 'package:bot_web/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (constext, state) => SingleChildScrollView(
        child: new Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Divider(
                thickness: 1.0,
                //indent: 0.0,
                color: Color(0xff1278bd),
              ),
              Container(
                color: Colors.white70,
                margin: const EdgeInsets.only(top: 25, bottom: 15),
                //alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 100,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'LBot',
                          style: TextStyle(
                            fontSize: 45,
                            fontFamily: 'RobotoMono',
                            color: Color(0xff1278bd),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 550,
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Lbot нь хуулийн нэг өгөгдөл болох Зөрчлийн тухай /шинэчилсэн найруулга/-аас гаргаж авсан мэдлэгийн санг ашигласан ухаалаг үйлчилгээг ботод суурилсан веб аппликэйшнаар дамжуулан 24/7 үйлчилгээг иргэдэд үзүүлэх мөн цаг хугацаа орон зайнаас үл хамааран хэрэглэгч бүрд тэгш үйлчлэх хууль зүйн ухаалаг систем юм.',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'RobotoMono',
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text('Lbot Logo'),
                  ],
                ),
              ),
              Text(
                "Үнэлгээ хийгдсэн асуултууд",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'RobotoMono',
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width - 100,
                  child: state.feedbackList != null
                      ? DataTable(
                          columns: [
                            DataColumn(
                              label: Text("ID"),
                            ),
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
                                      Text(element['id']),
                                    ),
                                    DataCell(
                                      Text(element['question']),
                                    ),
                                    DataCell(
                                      Text(element['answer']),
                                    ),
                                    DataCell(
                                      Text(element['rating']),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
