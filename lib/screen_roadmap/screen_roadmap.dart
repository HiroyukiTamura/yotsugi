import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:quiver/iterables.dart';
import 'package:video_player/video_player.dart';
import 'package:yotsugi/common/widget.dart';
import 'package:yotsugi/json_data/spreadsheet_data.dart';
import 'package:yotsugi/statics.dart';
import 'package:yotsugi/styles.dart';
import 'package:yotsugi/util.dart';

class ScreenRoadMap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScreenRoadMapState();
}

class _ScreenRoadMapState extends State<ScreenRoadMap> {
  LinkedScrollControllerGroup _controllers;
  final List<ScrollController> _scList = [];
  ScrollController _horizontalSc;
  ScrollController _horizontalBarSc;
  ScrollController _verticalBarSc;
  ScrollController _verticalSc;
  static final accentColor = Colors.black.withOpacity(.7);

  final ValueNotifier<_SpreadSheetDataWrapper> _vn = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    _controllers = LinkedScrollControllerGroup();
    _horizontalSc = ScrollController();
    _horizontalBarSc = ScrollController();
    _verticalBarSc = ScrollController();
    _verticalSc = ScrollController()
      ..addListener(() {
        final ratio =
            _verticalSc.position.pixels / _verticalSc.position.maxScrollExtent;
        debugPrint(_verticalBarSc.position.maxScrollExtent.toString());
        final pos = _verticalBarSc.position.maxScrollExtent * (1 - ratio);
        _verticalBarSc.animateTo(pos,
            duration: const Duration(), curve: Curves.linear);
      });
  }

  @override
  void dispose() {
    super.dispose();
    _scList.forEach((sc) => sc.dispose());
    _vn.dispose();
    _horizontalSc.dispose();
    _horizontalBarSc.dispose();
    _verticalBarSc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.PRIMARY_COLOR,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: ValueListenableBuilder<_SpreadSheetDataWrapper>(
            valueListenable: _vn,
            builder: (context, data, child) {
              if (data?.err != null) {
                Util.reportCrash(data.err);
                return Container(); //todo err
              }
              if (data?.ssd == null) return const SizedBox();

              if (data.ssd.sheets.length > 1)
                Util.reportCrash(Exception('snapshot.data.sheets.length > 1'));
              final sheet = data.ssd.sheets[0];
              final props = sheet.properties.gridProperties;
              final datum = sheet.data.first;
              final dataWithNull = sheet.getDataWithNullItem();
              sheet.collapseEmptyRowAndColumn(dataWithNull);

              final allWidgets = enumerate(dataWithNull).map((it) {
                final sc = _controllers.addAndGet();
                _scList.add(sc);
                return _rowWidget(dataWithNull, datum, sc, it.index);
              }).toList(growable: false);

              return Stack(
                children: [
                  SizedBox.expand(
                    child: Image.asset('img/shadow.png'),
                  ),
                  SizedBox.expand(
                    child: ColoredBox(
                      color: Colors.black.withOpacity(.4),
                    ),
                  ),
                  SingleChildScrollView(
                    controller: _verticalSc,
                    child: Column(
                      children: allWidgets,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FractionallySizedBox(
                      heightFactor: .3,
                      child: Container(
                        width: 4,
                        margin: const EdgeInsets.all(8),
                        child: SingleChildScrollView(
                          controller: _verticalBarSc,
                          physics: const NeverScrollableScrollPhysics(),
                          child: Container(
                            height: 96,
                            decoration: BoxDecoration(
                              color: accentColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 12,
                      margin: const EdgeInsets.all(8),
                      child: FractionallySizedBox(
                        heightFactor: .3,
                        child: SingleChildScrollView(
                          controller: _horizontalBarSc,
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            width: 96,
                            decoration: BoxDecoration(
                              color: accentColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  BackBtn(
                    btnFillColor: accentColor,
                    iconColor: Theme.of(context).accentColor,
                    onTap: () => Navigator.of(context).pop(),
                  )
                ],
              );
            }),
      ),
    );
  }

  Future<_SpreadSheetDataWrapper> _requestSpreadSheet() async {
    try {
      final response = await Dio().get<String>(
          'https://sheets.googleapis.com/v4/spreadsheets/1dtWBbEWWKIWCdpWiJKcbybeIb3rsojVsFF9RNSRQkJg',
          queryParameters: <String, dynamic>{
            'includeGridData': true,
            'key': Statics.API_KEY,
            'ranges': 'A1:CA200'
          });
      final ssd = SpreadSheetData.fromJson(response.data);
      return _SpreadSheetDataWrapper(ssd: ssd);
    } catch (e) {
      Util.reportCrash(e);
      return _SpreadSheetDataWrapper(err: e);
    }
  }

  static BorderSide _genBorderSide(SingleBorder border) => BorderSide(
      color:
          border?.color?.toColor() == null ? Colors.transparent : Colors.white,
      width: border?.width?.toDouble() ?? 0);

  static Widget _rowWidget(List<List<Value>> dataWithNull, Datum datum,
      ScrollController sc, int index) {
    final dataListInRow = dataWithNull[index];
    final widgets = enumerate(dataListInRow).map((it) {
      final borders = dataListInRow[it.index]?.effectiveFormat?.borders;
      final data = dataListInRow[it.index];
      final text = data?.userEnteredValue?.stringValue;
      final width = datum.columnMetadata[it.index].pixelSize.toDouble();
      return Visibility(
        visible: width != 0,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: _genBorderSide(borders?.top),
              right: _genBorderSide(borders?.right),
              bottom: _genBorderSide(borders?.bottom),
              left: _genBorderSide(borders?.left),
            ),
            color: data?.userEnteredFormat?.backgroundColor?.toColor() == null
                ? null
                : Colors.white.withOpacity(.1),
          ),
          width: width,
          alignment: data?.alignment,
          child: text == null
              ? const SizedBox()
              : Container(
                  padding: const EdgeInsets.all(4),
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      height: 1.1,
                      fontSize: 10,
                    ),
                  ),
                ),
        ),
      );
    }).toList(growable: false);

    return SingleChildScrollView(
      controller: sc,
      scrollDirection: Axis.horizontal,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: widgets,
        ),
      ),
    );
  }
}

@immutable
class _SpreadSheetDataWrapper {
  const _SpreadSheetDataWrapper({this.ssd, this.err});

  final SpreadSheetData ssd;
  final dynamic err;
}
