import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linked_scroll_controller/linked_scroll_controller.dart';
import 'package:quiver/iterables.dart';
import 'package:yotsugi/common/back_movie_state.dart';
import 'package:yotsugi/common/widget.dart';
import 'package:yotsugi/json_data/spreadsheet_data.dart';
import 'package:yotsugi/statics.dart';
import 'package:yotsugi/styles.dart';
import 'package:yotsugi/util.dart';

class ScreenRoadMap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScreenRoadMapState();
}

class _ScreenRoadMapState extends BackMovieState<ScreenRoadMap> {
  LinkedScrollControllerGroup _controllers;
  final List<ScrollController> _scList = [];
  ScrollController _verticalSc;
  static final accentColor = Colors.black.withOpacity(.7);

  ValueNotifier<_SpreadSheetDataWrapper> _vn;
  ValueNotifier<double> _vScrollRatio;
  ValueNotifier<double> _hScrollRatio;

  @override
  void initState() {
    super.initState();

    _vn = ValueNotifier(null);
    _vScrollRatio = ValueNotifier(0);
    _hScrollRatio = ValueNotifier(0);

    _controllers = LinkedScrollControllerGroup();
    _verticalSc = ScrollController()
      ..addListener(() {
        double ratio =
            _verticalSc.position.pixels / _verticalSc.position.maxScrollExtent;
        _vScrollRatio.value = Util.roundRatio(ratio);
      });

    _requestSpreadSheet().then((value) => _vn.value = value);
  }

  @override
  void dispose() {
    super.dispose();
    _scList.forEach((sc) => sc.dispose());
    _vn.dispose();
    _verticalSc.dispose();
    _vScrollRatio.dispose();
    _hScrollRatio.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Styles.PRIMARY_COLOR,
        body: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: ValueListenableBuilder<_SpreadSheetDataWrapper>(
              valueListenable: _vn,
              builder: (context, data, child) {
                if (data?.err != null) {
                  Util.reportCrash(data.err);
                  return SafeArea(
                    child: Stack(
                      children: const [
                        ErrRobotWidget(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: BackButton(),
                        ),
                      ],
                    ),
                  );
                }

                if (data?.ssd == null)
                  return const Center(
                    child: CircularProgressIndicator(),
                  );

                if (data.ssd.sheets.length > 1)
                  Util.reportCrash(
                      Exception('snapshot.data.sheets.length > 1'));
                final sheet = data.ssd.sheets[0];
                final props = sheet.properties.gridProperties;
                final datum = sheet.data.first;
                final dataWithNull = sheet.getDataWithNullItem();
                sheet.collapseEmptyRowAndColumn(dataWithNull);

                List<Widget> allWidgets = _scList.isEmpty
                    ? enumerate(dataWithNull).map((it) {
                        final sc = _controllers.addAndGet();
                        sc.addListener(() {
                          final ratio =
                              sc.position.pixels / sc.position.maxScrollExtent;
                          _hScrollRatio.value = Util.roundRatio(ratio);
                        });
                        _scList.add(sc);
                        return _rowWidget(
                            dataWithNull, datum, _scList[it.index], it.index);
                      }).toList(growable: false)
                    : enumerate(dataWithNull)
                        .map((it) => _rowWidget(
                            dataWithNull, datum, _scList[it.index], it.index))
                        .toList(growable: false);

                final mqd = MediaQuery.of(context);
                final totalH =
                    mqd.size.height - mqd.padding.top - mqd.padding.bottom;
                final totalW =
                    mqd.size.width - mqd.padding.right - mqd.padding.left;

                return Stack(
                  children: [
                    ...backGround(videoShadowOpacity: .4),
                    SingleChildScrollView(
                      controller: _verticalSc,
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: Column(
                          children: allWidgets,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: totalH * .3,
                        width: 4,
                        margin: const EdgeInsets.all(8),
                        child: ValueListenableBuilder<double>(
                          valueListenable: _vScrollRatio,
                          builder: (context, ratio, child) => Column(
                            children: [
                              SizedBox(
                                height: totalH * .2 * ratio,
                              ),
                              child,
                              SizedBox(
                                height: totalH * .2 * (1 - ratio),
                              ),
                            ],
                          ),
                          child: Container(
                            height: totalH * .1,
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
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: totalW * .3,
                        height: 4,
                        margin: const EdgeInsets.all(8),
                        child: ValueListenableBuilder<double>(
                          valueListenable: _hScrollRatio,
                          builder: (context, ratio, child) => Row(
                            children: [
                              SizedBox(
                                width: totalW * .2 * ratio,
                              ),
                              child,
                              SizedBox(
                                width: totalW * .2 * (1 - ratio),
                              ),
                            ],
                          ),
                          child: Container(
                            width: totalW * .1,
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
                    BackBtn(
                      btnFillColor: accentColor,
                      iconColor: Colors.white,
                      onTap: () => Navigator.of(context).pop(),
                    )
                  ],
                );
              }),
        ),
      );

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

  static Widget _rowWidget(
    List<List<Value>> dataWithNull,
    Datum datum,
    ScrollController sc,
    int index,
  ) {
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
